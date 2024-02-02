function[j, fiblis] = tester(N)
    fiblis(1) = 1;
            fiblis(2) = 1;
            for n=1:N
              fiblis(n + 2) = fiblis(n + 1) + fiblis(n);
              
            end
            j = fiblis(N + 2);
       


end 