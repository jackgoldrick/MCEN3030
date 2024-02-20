% b2 = .9:.01:1.1;
% runme(13, 16, 3, b2, .001)
% Everything will print to Cmd-Win nice and formatted.
function runme(x_0, x_1, x_s, b_2, err_acc)
    import pkg.set_3.*

    fprintf('Problem 1: \n')
    fprintf('  -> Secant Method: \n');
    fprintf('\n')
        
            set_3.secant_method(x_0, x_1, err_acc)

    fprintf('\n')
    fprintf('Problem 2: \n')
    fprintf('  -> Fixed Point Root: \n');
    fprintf('\n')

            set_3.fixed_point(x_s, err_acc)

    fprintf('\n')
    fprintf('Problem 3: \n')
    fprintf('  -> Second Dimension Error: \n');
    fprintf('\n')
          
            set_3.solution_plot(b_2)

    

end 