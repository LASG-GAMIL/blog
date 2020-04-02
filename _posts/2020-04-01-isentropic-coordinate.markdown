---
layout: post
title: "等熵坐标"
date: 2020-04-01 18:47:24 +0800
category: equations, vertical coordinate
---

{% katexmm %}

## 前言

采用物质面作为垂直坐标面的最大优点是运动准二维，可以很大程度上避免垂直平流，且有利于保持位涡守恒。但是缺点是需要处理下垫面等位温面与地表的交叉。

## 等熵坐标下的方程组

# 状态方程

$$
\alpha = \frac{R_d T}{p}
$$

位温定义$\theta$为

$$
T = \theta \left( \frac{p}{p_0} \right)^{\frac{R_d}{c_p}}
$$

推导一些微分关系式，沿等位温面的水平梯度

$$
\nabla_\theta T = \theta \nabla_\theta \left( \frac{p}{p_0} \right)^{\frac{R_d}{c_p}} = T \left( \frac{p_0}{p} \right)^{\frac{R_d}{c_p}} \frac{R_d}{c_p} \left( \frac{p_0}{p} \right)^{1 - \frac{R_d}{c_p}} p_0^{-1} \nabla_{\theta} p
$$

经过整理，得

$$
c_p \nabla_\theta T = \alpha \nabla_\theta p
$$

类似时间导数

$$
c_p \frac{\partial T}{\partial t} = \alpha \frac{\partial p}{\partial t}
$$

再推导得垂直梯度

$$
c_p \frac{\partial T}{\partial \theta} = \alpha \frac{\partial p}{\partial \theta} + \Pi
$$

其中$\Pi$为Exner函数

$$
\Pi = c_p \left( \frac{p}{p_0} \right)^{\frac{R_d}{c_p}}
$$

# 热力学方程

此时的热力学方程变为了垂直坐标速度

$$
\dot{\theta} = \frac{Q}{\Pi}
$$

其中$Q$为单位质量的加热率。

# 静力平衡方程

$$
\frac{\partial \phi}{\partial \theta} = - \alpha \frac{\partial p}{\partial \theta}
$$

$$
\frac{\partial M}{\partial \theta} = \Pi
$$

其中$M$为Montgomery势

$$
M = c_p T + \phi
$$

# 连续方程

$$
\nabla_p = \nabla_\theta - \nabla_\theta p \frac{\partial}{\partial p}
$$

$$
\omega = \frac{D p}{D t} = \left( \frac{\partial}{\partial t} + \mathbf{v} \cdot \nabla \right)_\theta p + \dot{\theta} \frac{\partial p}{\partial \theta}
$$

利用气压坐标的连续方程

$$
\nabla_p \cdot \mathbf{v} + \frac{\partial \omega}{\partial p} = 0
$$

$$
\frac{\partial m}{\partial t} + \nabla_\theta \cdot \left( m \mathbf{v} \right) + \frac{\partial m \dot{\theta}}{\partial \theta} = 0
$$

其中$m = - \frac{\partial p}{\partial \theta}$。

# 动量方程

气压梯度力在高度、气压、经典气压地形追随坐标系下的形式为

$$
\ - \frac{1}{\rho} \nabla_z p, \quad - \nabla_p \phi, \quad - \frac{1}{\rho} \nabla_\sigma p - \nabla_\sigma \phi
$$

从高度坐标推等熵坐标的气压梯度力

$$
\ - \frac{1}{\rho} \nabla_z p = - \frac{1}{\rho} \nabla_\theta p + \frac{\partial p}{\partial z} \nabla_\theta z = - {\color{red}\frac{1}{\rho} \nabla_\theta p} - \nabla_\theta \phi
$$

其中红色项需要进一步推导（带入理想气体状态方程和位温定义式）

$$
\begin{matrix}
  {\color{red}\frac{1}{\rho} \nabla_\theta p}
  & = \frac{R_d T}{p} \nabla_\theta p = \frac{R_d}{p} \theta \left( \frac{p}{p_0} \right)^{\frac{R_d}{c_p}} \nabla_\theta p \\
  & = \theta \frac{R_d}{c_p} c_p \left( \frac{p}{\color{blue}p_0} \right)^{-1} \left( \frac{p}{p_0} \right)^{\frac{R_d}{c_p}} \nabla_\theta \frac{p}{\color{blue}p_0} \\
  & = \theta \nabla_\theta c_p \left( \frac{p}{p_0} \right)^{\frac{R_d}{c_p}} = \theta \nabla_\theta \Pi = {\color{cyan} \nabla_\theta \theta \Pi}
\end{matrix}
$$

则等熵坐标系下的气压梯度力为

$$
\ - \frac{1}{\rho} \nabla_z p = - \nabla_\theta \left(\theta \Pi + \phi\right) = - \nabla_\theta M
$$

其中$M$是干静力能，或称为Montgomery势。从气压坐标推导也可以得到同样的结果

$$
\ - \nabla_p \phi = - \nabla_\theta M
$$

水平动量方程为

$$
\frac{D \mathbf{v}}{D t} = - f \mathbf{k} \times \mathbf{v} - \nabla_\theta M + \mathbf{F}
$$

## 参考文献

- Yueh-Jiuan G. Hsu and Akio Arakawa, 1990: Numerical Modeling of the Atmosphere with an Isentropic Vertical Coordinate. Monthly Weather Review, 1990, 118, 1933-1959.

{% endkatexmm %}