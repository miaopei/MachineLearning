#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Date    : 2018-03-15 15:52:37
# @Author  : miaopei (miaopei163@163.com)
# @Link    : 
# @Version : $Id$

from matplotlib import pyplot as plt
from matplotlib import animation
import numpy as np

fig, ax = plt.subplots()

# 我们的数据是一个0~2π内的正弦曲线：
x = np.arange(0, 2*np.pi, 0.01)
line, = ax.plot(x, np.sin(x))

# 接着，构造自定义动画函数animate，用来更新每一帧上各个x对应的y坐标值，参数表示第i帧：
def animate(i):
    line.set_ydata(np.sin(x + i/10.0))
    return line,

# 然后，构造开始帧函数init：
def init():
    line.set_ydata(np.sin(x))
    return line,

# 参数设置
ani = animation.FuncAnimation(fig=fig,
                              func=animate,
                              frames=100,
                              init_func=init,
                              interval=20,
                              blit=False)

plt.show()
