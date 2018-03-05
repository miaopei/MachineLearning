#!/usr/bin/python
# -*- coding: utf-8 -*-

def outlierCleaner(predictions, ages, net_worths):
    """
        Clean away the 10% of points that have the largest
        residual errors (difference between the prediction
        and the actual net worth).

        Return a list of tuples named cleaned_data where 
        each tuple is of the form (age, net_worth, error).

        你将在 outliers/outlier_cleaner.py 中找到 outlierCleaner() 函数的骨架并向其填充清理算法。用到的三个参数是：predictions 是一个列表，包含回归的预测目标；ages 也是一个列表，包含训练集内的年龄；net_worths 是训练集内净值的实际值。每个列表中应有 90 个元素（因为训练集内有 90 个点）。你的工作是返回一个名叫cleaned_data 的列表，该列表中只有 81 个元素，也即预测值和实际值 (net_worths) 具有最小误差的 81 个训练点 (90 * 0.9 = 81)。cleaned_data 的格式应为一个元组列表，其中每个元组的形式均为 (age, net_worth, error)。
    """
    
    cleaned_data = []

    ### your code goes here
    errors = (predictions - net_worths) ** 2

    triplets = sorted(zip(ages, net_worths, errors),
                      key=lambda triplet: triplet[2])

    num_retain = int(len(predictions) * .9)
    cleaned_data = triplets[:num_retain]

    
    return cleaned_data

