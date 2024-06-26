% runme(10, 6, 5, 3, 1, 4, 22, .00001)
% Everything will print to Cmd-Win nice and formatted.
function runme(a, x_0, Ceig, N, x_l, x_u, C, err_acc)
    import pkg.set_2.*

    fprintf('Problem 1: \n')
    fprintf('  -> NR Method: \n');
    fprintf('\n')
        tic

            set_2.Nr_method(a, x_0, err_acc)

        toc 
    fprintf('\n')
    fprintf('Problem 2: \n')
    fprintf('  -> Conduction Eigenvalue: \n');
    fprintf('\n')


        tic

            set_2.con_eig(Ceig, N)

        toc
    fprintf('\n')
    fprintf('Problem 3: \n')
    fprintf('  a) Bisection: \n');
    fprintf('\n')
   
        tic

    
            [B1, it1] = set_2.p3_bisect(x_l, x_u, C, err_acc);


        toc
    fprintf('      -> Answer: ')
    fprintf("%f" , B1);
    fprintf('\n')
    fprintf('      -> Number of Function Calls: ')
    fprintf("%u" , it1);
    fprintf('\n')
    

    fprintf('\n')
    fprintf('  b) False Position: \n');
    fprintf('\n')

        tic

        [B2, it2] = set_2.p3_false_pos(x_l, x_u, C, err_acc);
        
        toc
    fprintf('      -> Answer: ')
    fprintf("%f" , B2);
    fprintf('\n')
    fprintf('      -> Number of Function Calls: ')
    fprintf("%u" , it2);
    fprintf('\n')
  





end 