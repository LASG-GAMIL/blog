---
layout: post
title: "速度分解"
date: 2020-03-28 18:16:37 +0800
category: equations
---

{% katexmm %}

对于二维流体，速度矢量可以写为两个分量

$$
\mathbf{v} = \mathbf{v}_\phi + \mathbf{v}_\psi
$$

其中$\mathbf{v}_\phi$为无旋（irrotational）的散度风分量，$\mathbf{v}_\psi$为无辐散（divergence-free）的旋度风分量。

$$
\mathbf{v}_\phi = \nabla \phi \to \nabla \times \nabla \phi = 0 \\
\mathbf{v}_\psi = \mathbf{k} \times \nabla \psi \to \nabla \cdot \left( \mathbf{k} \times \nabla \psi \right) = 0
$$

散度和涡度可以写为

$$
D = \nabla \cdot \mathbf{v} = \nabla^2 \phi \\
\zeta = 
$$

如果希望在给定散度条件下重构风场，可以求解如下泊松方程

$$
\nabla^2 \phi = D
$$

{% endkatexmm %}