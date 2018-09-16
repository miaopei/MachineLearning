import torch
import torchvision
import time
from datetime import timedelta
import numpy as np

def get_duration(start_time):
    return timedelta(seconds=time.time() - start_time)

def get_device():
    return torch.device("cuda:0" if torch.cuda.is_available() else "cpu")

def evaluate(model, loader, device = None):
    print("Evaluate on %d batches" % (len(loader)))
    if not device:
        device = get_device()
    model.eval()
    log_preds = []
    preds = []
    for x, _ in loader:
        x = x.to(device)
        scores = model(x)
        log_preds += scores.data.tolist()
        _, y_preds = scores.data.max(1)
        preds += y_preds.tolist()
    return np.array(log_preds), np.array(preds)

def validate(model, val_loder, loss_fn, device):
    model.eval()
    num_samples = 0
    num_correct = 0
    val_loss = 0
    for x, y in val_loder:
        x = x.to(device)
        y = y.to(device)
        scores = model(x)
        _, y_preds = scores.data.max(1)
        loss = loss_fn(scores, y)
        val_loss += loss.item()
        num_correct += (y_preds == y).sum()
        num_samples += len(x)
    val_acc = float(num_correct) / num_samples
    val_loss /= num_samples
    return val_loss, val_acc

def train(model, train_loader, loss_fn, optimizer, num_epochs = 1, val_loader = None, device = None):
    if val_loader is not None:
        print("Train on %d batches, validate on %d batches" % (len(train_loader), len(val_loader)))
    else:
        print("Train on %d batches" % (len(train_loader)))

    if not device:
        device = get_device()

    for epoch in range(num_epochs):
        epoch_start = time.time()
        num_samples = 0
        num_correct = 0
        train_loss = 0
        model.train()
        for x, y in train_loader:
            x = x.to(device)
            y = y.to(device)

            scores = model(x)
            if isinstance(scores, tuple):
                # for inception v3
                scores = scores[0]
            _, y_preds = scores.data.max(1)

            loss = loss_fn(scores, y)
            train_loss += loss.item()

            num_samples += len(x)
            num_correct += (y_preds == y).sum()

            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
        
        train_acc = float(num_correct) / num_samples
        train_loss /= num_samples

        stats = "[Epoch %d / %d] loss = %.4f, acc = %.2f" % (
                epoch + 1, num_epochs,
                train_loss, train_acc * 100,
                )

        if val_loader:
            val_loss, val_acc = validate(model, val_loader, loss_fn, device)
            print("%s, val_loss = %.4f, val_acc = %.2f, duration = %s"  % (
                stats,
                val_loss, val_acc * 100,
                get_duration(epoch_start)
            ))
        else:
            print("%s, duration = %s" % (stats, get_duration(epoch_start)))

        