classdef set_1
    methods(Static)


        function[n] = taylor_cosh(x, err)
            res = 0;
            diff = 0;
            n = 0;
            expected = cosh(x);
                while (diff > err)

                    diff = 0;

                    res = res + ((x)^(2*n) ) / (factorial(2*n));

                    n = n + 1;
    
                    diff = abs(expected - res);

                end

        end 
        
        function[N] = fibonacci_rec(N)
           if (N < 2)
               N = 1;
            else 
           
                N = fibonacci_rec(N-1) + fibonacci_rec(N-2);
           end 
       
        end 
    end 
end 