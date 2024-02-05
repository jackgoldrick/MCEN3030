function[x, x_per] = NR_method(x_0)

    % y is the "return type" that the function spits out
    function y = fxn(x)
        y = x^(-2) - .5;
    end 

    function y_prime = fxn_prime(x)
        y_prime = -2 * x^ (-3);

    end

    x_old = x_0;
    for i=1:15
        x = x_0 - (fxn(x_0))/(fxn_prime(x_0));

        x_0 = x;
    end 
    
    err_accept = .0001
    err = 1;
    x_0 = x_old;
    while (abs(err) > err_accept)
        x_per = x_0 - (fxn(x_0))/(fxn_prime(x_0));
    
        err = abs((x_0 - x_per) / (x_per));

        x_0 = x_per;


    end
    

end 
