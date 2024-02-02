function run_me(N, val, error)

import pkg.set_1.*


tay = set_1.taylor_cosh(val, error);

rat = set_1.ratio(N);

rec_val = set_1.fib_rec(N);

[j, N_list] = set_1.fib_list(N);


for i=1:N
    list(i) = set_1.ratio(i);
end 
figure(1)
plot(1:N,list);

assignin('base','Taylor',tay);
assignin('base','Taylor_Error',error);
assignin('base','Fib_Recursion',rec_val);
assignin('base','Fib_List',N_list);
assignin('base','Fib_List_Val', j);
assignin('base','Ratio',rat);
assignin('base','Ratio_List', list);






end 