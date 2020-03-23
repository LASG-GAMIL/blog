---
layout: post
title:  "极点噪音抑制效果"
date:   2020-03-22 13:49:07 +0800
categories: simulation
---

采用U在极点离散方式时，计算的地形波算例从15天开始出现极点噪音，噪音由极点向中纬度传播，如下图所示

![U在极点原始结果](/blog/assets/img/mz.u_pole.origin.180x90.u.jpg){: .img-center .img-responsive}

通过长时间思考和尝试，我们将靠近极点的V圈上的相对涡度计算由各个网格单元计算改为整体计算，即由内圈的U通过Stokes定理计算极点的相对涡度，并简单的赋值给V圈上的顶点，结果如下

![U在极点修改结果](/blog/assets/img/mz.u_pole.stokes.180x90.u.jpg){: .img-center .img-responsive}