function run_me(N, val, error)

import pkg.set_1.*

tic 
tay = set_1.taylor_cosh(val, error);
toc

tic
rat = set_1.ratio(N);
toc

tic
rec_val = set_1.fib_rec(N);
toc

tic
[j, ~] = set_1.fib_list(N);
toc

for i=1:N
    list(i) = set_1.ratio(i);
end 
figure(1)
plot(1:N,list);

[~, N_list] = set_1.fib_list(N);

assignin('base','Taylor',tay);
assignin('base','Taylor_Error',error);
assignin('base','Fib_Recursion',rec_val);
assignin('base','Fib_List',N_list);
assignin('base','Fib_List_Val', j);
assignin('base','Ratio',rat);
assignin('base','Ratio_List', list);






end 