function[x] = bisect_roots(x_l, x_u)


    N = 5;


    function y = fxn(x)

        y = 5- x.^2;
    end 

    % creates an array vector where each index increases by .01 and 1st index is 0
    x_pl = 0:.01:3;
    y_pl = fxn(x_pl);
    plot(x_pl, y_pl)

    for n = 1:N
        x_m = (x_l + x_u) / 2;

        if fxn(x_m) == 0
            x = x_m;
            return

        end 

        if fxn(x_m) * fxn(x_l) < 0 
            x_u = x_m;

        else 
            x_l = x_m;
        end 

        x = (x_l + x_u) / 2;
    end 
end 