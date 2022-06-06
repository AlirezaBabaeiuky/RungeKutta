%% Solving Differential Eqautions using Runge Kutta (RK) numerical method
clc
clear all
close all
clf 

h = 0.05;                                             % step size
x = 0 : h : 100;                                     % Calculates up to y(3)
Y = zeros(1,length(x));
y(1) = -0.5;                                           % initial condition

 F_xy = @(x , y) 3.*exp(-0.1*x)-0.4*y + y*sin(x)        % change the function as you desire
for i = 1 : (length(x)-1)                              % calculation loop
    k_1 = F_xy(x(i),y(i));
    k_2 = F_xy(x(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = F_xy((x(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = F_xy((x(i)+h),(y(i)+k_3*h));
    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;  % main equation
end
% validate using a decent ODE integrator  
tspan = [0,100]; 
y0 = -0.5; % boundary value (or can be initial condition of time)
[tx, yx] = ode45(F_xy, tspan, y0)
figure(1)
plot(x , y , '--r', 'LineWidth', 1) 
hold on
plot(tx , yx ,'-.b', 'LineWidth', 1)
grid on 
set(gca, 'FontSize' , 12)
legend({'Runge Kutta' , 'ode45'}, 'FontSize', 16)
hold off

