# 波士顿房价预测学习笔记

作为机器学习的入门项目，了解到这个一个监督学习类型的回归问题模型。项目中需要根据已有的数据，构建一个合理的模型对未来的房价可以做出预测。

[Udacity机器学习课程](https://classroom.udacity.com/nanodegrees/nd009-cn-advanced/syllabus)针对初学者做了精心地设计，这里来看项目是如何组织的，也示例我们从以下步骤分解问题：

1. 分析数据： 从宏观了解数据集的特征
2. 先决知识准备： 了解模型衡量标准、数据分割等基本技术
3. 模型分析： 通过可视化的方法，来引导初学者来分析模型的特性。
4. 实现和评估模型：
   1. 实现模型： 首先引入网格搜索和交叉验证的方法，并根据提示实现预测模型，并对模型进行训练并作出预测。
   2. 评估模型： 对模型的健壮性、实用性等进行分析评估。

### 1. 分析数据

分析数据，对数据有一个总体的了解。项目中分成了主要几个步骤：

1. 预处理： 项目中的数据是经过针对性的预处理：比如排除异常数据、删除不必要的数据项（简化）
2. 加载： 通过pandas加载数据
3. 统计： 并通过numpy做基本的统计运算：最大值、最小值、平均值、中位值、方差等，把玩数据，对数据有一个总体的了解。
4. 观察： 观察或者通过工具观察从单维度来了解一下各特征值对预测值的影响。

### 2. 先决知识准备

#### 2.1 定义衡量标准

作为建模的重要步骤，需要一个衡量标准，就像工程或者软件项目立项之后就要考虑验收标准。

- 对于回归模型，项目中建议使用“决定系数”（R^2）来量化模型的好坏。
  - sklearn带有的[r2_score](http://scikit-learn.org/stable/modules/generated/sklearn.metrics.r2_score.html)可以为我们所用。

#### 2.2 数据准备

需要做预测，那么数据集如何使用呢，有限的数据并不是一股脑用于模型学习的，至少对于监督学习不是这样。项目中引入了训练集和测试集的概念，这是训练模型的重要步骤。

- 数据分割与重排：
  - 数据集被分为训练集和测试集。同样sklearn也提供了现成的函数[train_test_split](http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html)，当然作为一个通用函数，有一些参数可配，具体可以查询[sklearn官方文档](http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html)。

### 3. 模型分析

模型分析在项目中是封装好的，意在让初学者以可视化的方式感知模型的拟合趋势。项目引入了两个评分工具：

- [学习曲线](http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.learning_curve.html)
- 复杂度曲线

以下是对这两种曲线的初步理解：

- 学习曲线： 描述交叉验证时，模型随着训练集大小的变化时训练分数和测试分数的变化曲线，用以表达模型随着训练集大小的变化趋势。
- 复杂度曲线： 项目中的复杂度曲线是基于sklearn的[验证曲线](http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.validation_curve.html)来做的，或者就翻译为“复杂度曲线”？用于描述模型训练分数和测试分数随指定的参数的变化而变化的情况。

项目通过这两组曲线引导大家对模型对这个数据集有了一些总体的认识： 1， 模型在训练集达到大概300时就趋于稳定，收敛到合理水平，说明模型是有效的，2， 从复杂度曲线可以看出，对于所使用的DecisionTreeRegressor在参数max_depth=3时模型效果达到最佳。而深度不足3时，训练分数和测试分数都较低，超过3之后，测试分数开始降低，有过拟合趋势，所以max_depth=3模型效果最佳。

### 4. 实现和评估模型

#### 4.1 网格搜索与交叉验证

项目引入了网格搜索和交叉验证的方法，因为项目中即将使用。

1. **网格搜索**：这是一种寻找算法参数最优值的解的方法，目的是寻找最优的算法参数来拟合当前的数据集。通常就是通过遍历参数的可能参数值（给定范围）的方式实现，具体实现方式为：通过尝试每一个可能的参数（组合），再根据评分算法对每个参数（组合）评分，再返回分数最好的来实现。最终是通过获得最优的算法参数来优化学习算法。
2. **交叉验证**：是通过操作训练集数据的方式来优化训练效果，具体做法为把训练集进一步划分更小的训练集和验证集，然后算法通过多轮训练+验证的方式做优化，从而在欠拟合和过拟合之间寻找一种平衡，达到选择更好的优化算法模型的目标。常见的交叉验证方法还可以分为：简单交叉验证，[`ShuffleSplit`](http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.ShuffleSplit.html)，*K折交叉验证法*等。

在实际应用中，常常是把网格搜索和交叉验证组合使用，这也是为什么sklearn会直接给出了[GridSearchCV](http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.GridSearchCV.html)算法，它的简化版本是网格搜索，同时提供cv的可选支持。

#### 4.2 模型实现

至此，项目给出了模型实现的核心函数fit_model的框架，并有初学者来填充算法，具体来看，模型的实现过程就是这样：

1. 准备训练集，测试集：[train_test_split](http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html)提供了实现
2. 创建网格搜索对象：依次准备好所需的参数。
   1. 创建回归器（这里是DecisionTreeRegressor实例）
   2. 准备参数字典：也就是网格搜索的范围
   3. 创建评分函数：创建满足条件的评分函数，底层实现为r2_score函数，但需要通过sklearn.metrics.make_scorer处理
   4. 创建交叉验证器：项目中使用了[`ShuffleSplit`](http://scikit-learn.org/stable/modules/generated/sklearn.model_selection.ShuffleSplit.html)
3. 模型fit数据，得到最优模型
4. 应用模型进行预测：准备测试数据，调用predict函数

这样，一个模型的完整过程大约完成，其中得到的最优模型还可以输出过程中得到的最优参数（model.get_params()['max_depth']）。

#### 4.3 模型评估

项目设计在应用模型predict之后，考虑到模型的局限性等因素，设置了模型评估的环节。这告诉我们，一个模型的完成是否对现实有指导意义还需要仔细的评估，这应该作为模型研究的必要环节。