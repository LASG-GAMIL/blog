---
layout: post
title:  "正压浅水方程组"
date:   2020-03-22 13:49:07 +0800
categories: equations
---

矢量不变形式的正压浅水方程组为
{% katexmm %}
$$
\frac{\partial u}{\partial t} = q h v - \frac{1}{a \cos{\varphi}} \frac{\partial}{\partial \lambda} \left( K + \phi \right) \\
\frac{\partial v}{\partial t} = - q h u - \frac{1}{a} \frac{\partial}{\partial \varphi} \left( K + \phi \right) \\
\frac{\partial h}{\partial t} = - \frac{1}{a \cos{\varphi}} \left( \frac{\partial h u}{\partial \lambda} + \frac{\partial h v \cos{\varphi}}{\partial \varphi} \right)
$$
其中位涡为$q = \zeta + f$，动能为$K = \frac{1}{2} \left( u^2 + v^2 \right)$，相对涡度为
$$
\zeta = \frac{1}{a} \frac{\partial v}{\partial \lambda} - \frac{1}{a \cos{\varphi}} \frac{\partial u \cos{\varphi}}{\partial \varphi}
$$
{% endkatexmm %}
