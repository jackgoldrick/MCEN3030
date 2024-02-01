function [z] = my_sin(x, N)
    z = 0;
    j = 1;
    for i=1:N

      z = z + ( ((-1)^(i-1))* ((x)^(2*i - 1) )) / (factorial(2*i -1));

    end
    f  = 0;
    while j<=N

        f = f + (((-1)^(j-1))*(x)^(2*j - 1))/(factorial(2*j -1));
         j = j + 1;
    end 



end
   