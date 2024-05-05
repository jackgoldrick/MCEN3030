function [t, x] = RK4(f, x0, h, t_f)
% RK4 returns the numerical solution x(t) for input differential equation
% f(x,t). You can pass in functions as input if defined as, e.g 
% f=@(x,t) exp(t);
% f = @(x,t) sin(t);
% x0 = 1;
% h = 0.01
% t_f = 5;

% To test your function as you build it, you might consider commenting out
% the (...) stuff in the function definition, replacing it with (), and
% then include values for f, x0, h, and t_f within the code!

% Construct a time vector with step size h, from 0 to t_f.
% Since this is based on "forward differencing", you won't be able to
% Calculate the last value of x(t) below. So maybe make this go from
% 0 to t_f+h and then make appropriate considerations below.

t = 0:h:t_f + h;


% Pre-allocate space for the x values, based on the size of t

x = zeros(size(t));
x(1) = x0;


% Iteratively construct the solution x(t)
for i = 1:length(t)-1
    k1 = f(x(i), t(i));
    k2 = f(x(i) + .5 *k1*h, t(i) + .5*h);
    k3 = f(x(i) + .5 *k2*h, t(i) + .5*h);
    k4 = f(x(i) + k3*h, t(i) + h);


    x(i+1) = x(i) + h*((k1 +2*k2 + 2*k3 + k4) / 6);

end





% Plot the solution
figure(1);
plot(t, x, '-');

end



