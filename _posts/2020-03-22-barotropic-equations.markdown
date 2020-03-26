---
layout: post
title:  "正压浅水方程组"
date:   2020-03-22 13:49:07 +0800
categories: equations
---

{% katexmm %}

我们关心的是球面正压浅水方程组的求解，首先给出它们的两种常用形式。

## 标准形式

$$
\frac{\partial u}{\partial t} = - \frac{u}{a \cos{\varphi}} \frac{\partial u}{\partial \lambda} - \frac{v}{a} \frac{\partial u}{\partial \varphi} + f v - \frac{\partial \phi}{\partial \lambda} \\
\frac{\partial v}{\partial t} = - \frac{u}{a \cos{\varphi}} \frac{\partial v}{\partial \lambda} - \frac{v}{a} \frac{\partial v}{\partial \varphi} - f u - \frac{\partial \phi}{\partial \varphi} \\
\frac{\partial h}{\partial t} = - \frac{1}{a \cos{\varphi}} \left( \frac{\partial h u}{\partial \lambda} + \frac{\partial h v \cos{\varphi}}{\partial \varphi} \right)
$$

其中科氏力参数$f = 2 \Omega \sin{\varphi}$。

# 涡度方程

# 矢量不变形式

矢量不变形式将非线性动量平流分为两项：

$$
\mathbf{v} \cdot \nabla{\mathbf{v}} = \left({\color{red}\nabla \times \mathbf{v}}\right) \times \mathbf{v} + \nabla {\color{blue}\frac{\vert \mathbf{v} \vert^2}{2}}
$$

其中红色项是相对涡度，蓝色项是动能。

$$
\frac{\partial u}{\partial t} = q h v - \frac{1}{a \cos{\varphi}} \frac{\partial}{\partial \lambda} \left( K + \phi \right) \\
\frac{\partial v}{\partial t} = - q h u - \frac{1}{a} \frac{\partial}{\partial \varphi} \left( K + \phi \right) \\
\frac{\partial h}{\partial t} = - \frac{1}{a \cos{\varphi}} \left( \frac{\partial h u}{\partial \lambda} + \frac{\partial h v \cos{\varphi}}{\partial \varphi} \right)
$$

其中位涡为$q = \frac{\zeta + f}{h}$，动能为$K = \frac{1}{2} \left( u^2 + v^2 \right)$，相对涡度为

$$
\zeta = \frac{1}{a} \frac{\partial v}{\partial \lambda} - \frac{1}{a \cos{\varphi}} \frac{\partial u \cos{\varphi}}{\partial \varphi}
$$

{% endkatexmm %}
