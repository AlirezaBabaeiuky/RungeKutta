# RungeKutta
This repository includes MATLAB code for solving a nonlinear differential equation using Runge Kutta 4 (RK4). Moreover, the solution is evaluated using ode45 function in MATLAB.
In order to use the RK4 method to solve a DE, first the the equation should be stated in first-order format. Higher-order equations can be re-written using order reduction method.  
The nonlinear differential equationadopted here is: 
F(x,y) = 3.*exp(-0.1*x)-0.4*y + y*sin(x)

![Fig1](https://user-images.githubusercontent.com/61955953/172248288-164feacf-ee89-4d49-8061-f2078cb01b26.png)

As a recap: the difference between Boundary Value Problem and Initial Value Problem:  in IVP: we are given the value of function y(x) and its derivative y′(x) at the same point ( initial point ). But, Boundary Value Problems: In boundary value problem, we are given the value of function y(x) at two different points.

Shooting method is another numerical method in numeriucal analysis: 
 we are given the value of function y(x) and its derivative y′(x) at the same point ( initial point ) sy at x=0 i.e y(0)=xi1 and y′(0)=x2. Boundary Value Problems: In boundary value problem, we are given the value of function y(x) at two different points, i.e y(a)=x1 and y(b)=x
 Refernce: https://en.wikipedia.org/wiki/Shooting_method
 
 
