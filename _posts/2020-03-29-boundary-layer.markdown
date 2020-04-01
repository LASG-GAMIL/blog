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

其中$\tau$为动量的雷诺应力（Reynolds stress），在水平两个方向上为$\overline{w^\prime u^\prime}$和$\overline{w^\prime v^\prime}$。$\tau$的量级是$0.1 m^2 s^{-2}$，$u_*$的典型值量级是$0.3 m s^{-1}$。对于湍流，在贴近地面的区域（数米），$u_*$近似常数。边界层中的速度常表达为$u_*$和高度$z$的函数

$$
u = \frac{u_*}{\kappa} \ln{\frac{z}{z_0}}
$$

其中$z_0$为摩擦长度，$\kappa$为卡曼常数，是一个经验数，一般取0.35～0.4左右。

## 基础假设

# 混合长假设

该假设空气微团在移动某一距离$L_m$前仍保持原位置的平均性质，之后便与周围空气混合。考虑垂直运动尺度与水平运动尺度相当的情况，则垂直湍流速度约为

$$
w^\prime \approx L_m \left|\frac{\partial \overline{\mathbf{v}}}{\partial z}\right|
$$

其中$\overline{\mathbf{v}}$是平均水平风场。

$$
-\overline{w^\prime u^\prime} = \overline{w^\prime L_m} \frac{\partial \overline{u}}{\partial z} = \overline{L_m^2} \left|\frac{\partial \overline{\mathbf{v}}}{\partial z}\right| \frac{\partial \overline{u}}{\partial z} = K_m \frac{\partial \overline{u}}{\partial z}
$$

上式将湍流动量通量$-\overline{w^\prime u^\prime}$进行参数化，表达为动量涡旋粘性系数$K_m$（eddy viscosity coefficient）和平均风垂直梯度。在近地层假设$L_m = \kappa z$，带入上式

$$
\tau = \left(\kappa z\right)^2 \left|\frac{\partial \overline{\mathbf{v}}}{\partial z}\right|^2
$$

再带入摩擦速度

$$
u_*^2 = \left(\kappa z\right)^2 \left|\frac{\partial \overline{\mathbf{v}}}{\partial z}\right|^2
$$

$$
\int_{0}^{\left|\overline{\mathbf{v}}\right|} \frac{1}{u_*} ds = \int_{z_0}^{z} \frac{\kappa z} dz
$$

得到对数风廓线

$$
\left|\overline{\mathbf{v}}\right| = \frac{u_*}{\kappa} \ln{\frac{z}{z_0}}
$$

{% endkatexmm %}