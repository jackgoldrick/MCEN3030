function runme(x_0, x_l, x_u, err_acc, a, N, Ceig, C)
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

    
            set_2.p3_bisect(x_l, x_u, C, err_acc)


        toc

    fprintf('\n')
    fprintf('  b) False Position: \n');
    fprintf('\n')

        tic

        set_2.p3_false_pos(x_l, x_u, C, err_acc)
        
        toc

  





end 