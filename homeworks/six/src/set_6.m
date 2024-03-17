classdef set_6
    methods(Static)

        function [a_best,n_best] = pattern_fit(a0,n0,da,dn)

            % finds the best fits of a model to included data using pattern search


            % Some data I made up:
            x_data=[0, 0.0500, 0.1000, 0.1500, 0.2000, 0.2500, 0.3000, 0.3500, 0.4000, 0.4500, 0.5000, 0.5500, 0.6000, 0.6500, 0.7000, 0.7500, 0.8000, 0.8500, 0.9000, 0.9500, 1.0000];
            z_data=[0, 0.0288, 0.1095, 0.1945, 0.3290, 0.5470, 0.6779, 0.7737, 1.2348, 1.2512, 1.5704, 1.7016, 2.0294, 2.2959, 2.6138, 3.5973, 3.3025, 3.8515, 4.4374, 4.2621, 3.8980];

            % We suspect this data will fit the model z=a*x^n. You can plot and check,
            % but comment this out before submitting.
            plot(x_data,z_data,'.','MarkerSize',12)
            A=0:da:10; % This is the search range for "a".
            N=0:dn:5; % This is the search range for "n".

            [a_fit,n_fit]=meshgrid(A,N); % This converts the above A & N into two matrices. I'm not sure the best way to explain it... just print and see what these are!
            E = recalc_e(da, 10, dn, 5, 0);


            function E = recalc_e(da, a,  dn, n, v)
                if ~v
                A=0:da:a; % This is the search range for "a".
                N=0:dn:n; % This is the search range for "n".

                else 
                A= (a - da):da:(a + da); % This is the search range for "a".
                N=(n - dn):dn:(n + dn); % This is the search range for "n".

                end 




                [a_fit,n_fit]=meshgrid(A,N); % This converts the above A & N into two matrices. I'm not sure the best way to explain it... just print and see what these are!
                E=zeros(size(a_fit)); % Initialize the sum of the squares of the residuals to be zero. We are going to calculate this for every combination of (a,n).
                for i=1:length(x_data) % Sum the residual squared at each data point.


                    E = E + (z_data(i)- a_fit .* x_data(i) .^n_fit) .^2;
                end
            end

            i_a = find( (a_fit > a0 - da & a_fit < a0 + da));

            col = (i_a(1) - mod(i_a(1), length(N))) / length(N) + 1;

            i_n = find( (n_fit > n0 - dn & n_fit < n0 + dn));

            row = mod(i_n(1), length(N));
            % E =  z_data - a_fit * (x_data .^n_fit) .^2;

            % Comment this out before submitting, but you might be interested to see
            % what the plot looks like re: the sum of residuals vs parameter pairs.
            % It will also give you an idea of where the best fit is.
            contour(a_fit,n_fit,E,min(E):1:max(E))

            % Essentially, E is the function we are trying to minimize with respect to
            % (a,n). Now you add your pattern search code below.


            resolution = 0;

            f_nx = 0;
            f_x = 0;
            f_ny = 0;
            f_y = 0;
            while (resolution < 10)
                f_0 = E(row, col);



                if ( (row == 1) )
                    f_x = E(row + 1, col);
                    f_nx = abs(max(f)) + 1;



                elseif (row == length(N))
                    f_nx = E(row - 1, col);
                    f_x = abs(max(f)) + 1;

                else
                    f_x = E(row + 1, col);
                    f_nx = E(row - 1, col);


                end



                if ( (col == 1) )
                    f_y = E(row, col + 1);
                    f_ny = abs(max(f)) + 1;



                elseif (col == length(A))
                    f_ny = E(row, col - 1);
                    f_y = abs(max(f)) + 1;
                else
                    f_y = E(row, col + 1);
                    f_ny = E(row, col - 1);

                end

                f = [f_0 f_nx f_x f_ny f_y];

                switch min(f)




                    case f_0

                        da = da /2;
                        dn = dn / 2;
                        E = recalc_e(da, A(col), dn, N(row), 1);
                        row = 2;
                        col = 2;
                        resolution = resolution + 1;



                    case f_x
                        row = row + 1;

                    case f_y
                        col = col + 1;

                    case f_nx
                        row = row - 1;


                    case f_ny
                        col = col - 1;

                end

            end


            a_best = A(col);
            n_best = N(row);
            est = a_best * ( x_data .^n_best);
            figure(2)
            hold on
            plot(x_data,z_data,'.','MarkerSize',12)

            plot(x_data, est, '--r');
            
            hold off



        end






    end





end
