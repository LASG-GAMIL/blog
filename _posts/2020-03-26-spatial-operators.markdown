---
layout: post
title: "空间算子"
date: 2020-03-26 10:09:43 +0800
categories: equations
---

{% katexmm %}

空间算子是预报方程中最关键的部分，需要对它们非常熟悉，了解它们的性质。

## 基础算子

- 水平梯度算子 $\nabla f$
- 水平散度算子 $\nabla \cdot \mathbf{F}$
- 水平旋度算子 $\nabla \times \mathbf{F}$
- 水平通量算子 $\nabla \cdot \left(f \mathbf{v}\right)$
- 水平平流算子 $\mathbf{v} \cdot \nabla f$

## 球面坐标系形式

球坐标系下的矢量在计算导数时存在一定问题，因为球坐标基矢量随坐标变化，所以矢量的空间变化包含了基矢量的变化。下面列出的是各个算子的微分形式：

- 水平梯度算子

$$
\nabla f = \frac{1}{a \cos{\varphi}} \frac{\partial f}{\partial \lambda} \mathbf{i}_\lambda + \frac{1}{a} \frac{\partial f}{\partial \varphi} \mathbf{i}_\varphi
$$

- 水平散度算子

$$
\nabla \cdot \mathbf{F} = \frac{1}{a \cos{\varphi}} \left( \frac{\partial F_\lambda}{\partial \lambda} + \frac{\partial F_\varphi \cos{\varphi}}{\partial \varphi} \right)
$$

- 水平旋度算子

$$
\nabla \times \mathbf{F} = \frac{1}{a \cos{\varphi}} \left( \frac{\partial F_\varphi}{\partial \lambda} - \frac{\partial F_{\lambda} \cos{\varphi}}{\partial \varphi} \right)
$$

- 水平通量算子

$$
\nabla \cdot \left(\mathbf{v} f\right) = \frac{1}{a \cos{\varphi}} \left( \frac{\partial f v}{\partial \lambda} + \frac{\partial f v \cos{\varphi}}{\partial \varphi} \right)
$$

- 水平平流算子

$$
\mathbf{v} \cdot \nabla f = \frac{u}{a \cos{\varphi}} \frac{\partial f}{\partial \lambda} + \frac{v}{a} \frac{\partial f}{\partial \varphi}
$$

积分形式更容易操作

- 水平旋度算子

$$
\left[\nabla \times \mathbf{v} \right]_A := \lim_{|A| \to 0} \frac{1}{|A|} \int_{\partial A} \mathbf{v} \cdot d\mathbf{l}
$$

- 水平通量算子

$$
\left[\nabla \cdot \left(\mathbf{v} f\right)\right]_A := \lim_{|A| \to 0} \frac{1}{|A|} \int_{\partial A} f \mathbf{u} \cdot \mathbf{n} ds
$$

其中$d\mathbf{l}$是沿着二维区域$A$边界的线段矢量，$ds$是沿区域$A$边界的面元，$\mathbf{n}$是$ds$的法向量，指向区域$A$外侧，$|A|$是区域面积或体积。


## 离散方法

# 经纬网格

![质量散度](/blog/assets/img/mass-flux-discretization.jpg){: .img-center .img-half-size .img-responsive}
$$
\left[\nabla \cdot \left( \mathbf{v} f \right)\right]_{i,j} = \frac{1}{A_j} \left[ \left(l_e u \hat{f}_e \right)_{i+\frac{1}{2},j} - \left( l_e u \hat{f}_e \right)_{i-\frac{1}{2},j} + \left( l_e v \hat{f}_e \right)_{i,j+\frac{1}{2}} - \left( l_e v \hat{f}_e \right)_{i,j-\frac{1}{2}} \right]
$$

{% endkatexmm %}