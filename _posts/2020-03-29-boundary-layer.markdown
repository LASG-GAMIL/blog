---
layout: post
title: "边界层基础知识"
date: 2020-03-29 15:48:43 +0800
category: boundary-layer
---

{% katexmm %}

## 基础参数

# 摩擦速度

$$
u_* = \sqrt{\frac{\tau}{\rho}}
$$

其中$\tau$为动量的雷诺应力（Reynolds stress），在水平两个方向上为$\overline{w^\prime u^\prime}$和$\overline{w^\prime v^\prime}$。对于湍流，在贴近地面的区域（数米），$u_*$近似常数。边界层中的速度常表达为$u_*$和高度$z$的函数

$$
u = \frac{u_*}{\kappa} \ln{\frac{z}{z_0}}
$$

其中$z_0$为摩擦长度，$\kappa$为卡曼常数，是一个经验数，一般取0.35～0.4左右。

{% endkatexmm %}