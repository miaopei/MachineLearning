#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Date    : 2018-03-15 15:52:37
# @Author  : miaopei (miaopei163@163.com)
# @Link    : 
# @Version : $Id$

# 首先在进行 3D Plot 时除了导入 matplotlib ，还要额外添加一个模块，即 Axes 3D 3D 坐标轴显示：
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure()
ax = Axes3D(fig)

# 接下来给进 X 和 Y 值，并将 X 和 Y 编织成栅格。每一个（X, Y）点对应的高度值我们用下面这个函数来计算。
# X, Y value
X = np.arange(-4, 4, 0.25)
Y = np.arange(-4, 4, 0.25)
X, Y = np.meshgrid(X, Y)    # x-y 平面的网格
R = np.sqrt(X ** 2 + Y ** 2)

# height value
Z = np.sin(R)

# 做出一个三维曲面，并将一个 colormap rainbow 填充颜色，
# 之后将三维图像投影到 XY 平面上做一个等高线图。 plot 3D 图像：
# 其中，rstride 和 cstride 分别代表 row 和 column 的跨度。
ax.plot_surface(X, Y, Z, rstride=1, cstride=1, cmap=plt.get_cmap('rainbow'))

# 下面添加 XY 平面的等高线：
# 如果 zdir 选择了x，那么效果将会是对于 XZ 平面的投影，效果如下：
ax.contourf(X, Y, Z, zdir='z', offset=-2, cmap=plt.get_cmap('rainbow'))

# 固定等高线的高度
ax.set_zlim(-2, 2)

plt.show()