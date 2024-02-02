classdef set_1
    methods(Static)


        function[n] = taylor_cosh(x, err)
            res = 0;
            diff = 1;
            n = 0;
            expected = cosh(x);
                while (diff > err)

                    res = res + ((x)^(2*n) ) / (factorial(2*n));

                    n = n + 1;
    
                    diff = abs(expected - res);

                end

        end 
        
        function[N] = fib_rec(N)
           if (N < 3)
               N = 1;
            else 
           
                N = set_1.fib_rec(N-1) + set_1.fib_rec(N-2);
           end 
       
        end 


       function[j, fiblis] = fib_list(N)
            fiblis(1) = 1;
            fiblis(2) = 1;
            for n=1: (N - 2)
              fiblis(n + 2) = fiblis(n + 1) + fiblis(n);
              
            end

            j = fiblis(N);
       

        end 





        function[sig] = ratio(N)
            [~, seq] = (set_1.fib_list(N));
            sig = 1;
            for n=1:(N - 1)
                sig = sig + ( (-1)^(n+1) ) / (seq(n) * seq(n+1));
            end 



        end 
    end 
end 