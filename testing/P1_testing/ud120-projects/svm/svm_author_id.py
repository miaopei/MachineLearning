#!/usr/bin/python
# -*- coding: utf-8 -*-
""" 
    This is the code to accompany the Lesson 2 (SVM) mini-project.

    Use a SVM to identify emails from the Enron corpus by their authors:    
    Sara has label 0
    Chris has label 1
"""
    
import sys
from time import time
sys.path.append("../tools/")
from email_preprocess import preprocess


### features_train and features_test are the features for the training
### and testing datasets, respectively
### labels_train and labels_test are the corresponding item labels
features_train, features_test, labels_train, labels_test = preprocess()




#########################################################
### your code goes here ###

#########################################################

from sklearn import svm
from sklearn.metrics import accuracy_score

#features_train = features_train[:len(features_train)/100] 
#labels_train = labels_train[:len(labels_train)/100] 

clf = svm.SVC(kernel='rbf', C=10000.)

t0 = time()

clf.fit(features_train, labels_train)

print "training time: ", round(time() - t0, 3), "s"

t0 = time()

pred = clf.predict(features_test)

print "predict time: ", round(time() - t0, 3), "s"

# accuracy = clf.score(features_test, labels_test) # 得到的 accuracy 结果一样
accuracy = accuracy_score(pred, labels_test)

print "accuracy: ", accuracy

print "10: ", pred[10]
print "26: ", pred[26]
print "50: ", pred[50]

from collections import Counter
print "svm(Sara(0), Chris(1)): ", Counter(pred)
