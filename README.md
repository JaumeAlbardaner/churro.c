# churro.c

This project comes inspired by Andy Sloane's Donut.c project, which can be found in his website: https://www.a1k0n.net/2006/09/15/obfuscated-c-donut.html .

I had previously worked on generating visual output from code, by coding shaders in GLSL. However, I was curious to know how this famous code snippet worked.

In order to learn how it works, I tried to replicate it by changing the object to render. I chose a Spanish churro for that purpose. However, since that object has much more detail than a doughnut, I had to project the output of the code onto a window with more resolution than a terminal.

For this purpose I relied on Processing, a very simple tool for a project that I didn't want to spend too much time on.

<p align="center">
<img src="https://jaumealbardaner.github.io/assets/img/portfolio/churro/churro-gif.gif" width="250" height="250"/>
</p>

For more information on the making-of of this project, check out my website: https://jaumealbardaner.github.io/pages/portfolio/Churro.html

## Files:

**Doughnut** (Inspiration)

* donut.c : Original code in C of the spinning dougnut.
* donut.cpp : Implementation in C++ of the spinning doughnut.
* donut/donut.pde : Implementation in Processing of the spinning doughnut.

**Churro**

* Churro.mlx : Some Matlab code I used to make some math
* churro/churro.pde : Implementation in Processing of the spinning Churro.
    