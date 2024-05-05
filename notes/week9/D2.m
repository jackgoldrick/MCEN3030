classdef D2
    properties
        Property1
    end

    methods
        % dx/dt = f(x,y,t)
        % dy/dt = g(x,y,t)
        % xDot = a * x + b * x * y
        % yDot = c * x * y + d * y
        % RK4m = [ k1x + 2 * k2x + 2 + k3x + k4x ; 
        %          k1y + 2 * k2y + 2 + k3y + k4y ] ... 
        % delta_t := h
        % nextXY = nowXY + (delta_t / 6) * RK4m


        function obj = coupledODE(inputArg1)
            
        end
    end
end