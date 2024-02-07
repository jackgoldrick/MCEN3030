function [x_root] = fixed_point(x_0)
    % fixed_point Summary of this function goes here
    % inputs:
    max_iter=100;
    err_accept = 0.001;
    % example functions for which we seek f(x) = 0
    % f(x) = x*exp(0.5*x)+1.2*x-5;
    %
    % f(x) = 5*cos(x)
    % ... but it might make sense to go ahead and define this function as the
    % g(x) used in g(x) = x:
    function y=gxn(x)

        y = 5/ (exp(0.5*x)+1.2);
        % (abs(y - x) / y) > err_accept
        while (y ~= x)
            x = y;
            y = 5 / (exp(0.5*x) +1.2);
            % z = y;
            

        end 
        %y = x;
    end
    % Write some code that proceeds through the algorithm and stops when
    % err<err_accept OR when the number of iterations exceeds max_iter. Be sure
    % to initialize your error and iteration number!
    x_root = gxn(x_0);





end
