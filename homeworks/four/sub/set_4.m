classdef set_4
    
    methods(Static)
    % This Does the actual legwork of decomposing L and U
    function [L,U, E] = get_LUE(U)
        r_size = length(U(:,1));
        c_size = length(U(:,1));
        E = eye(r_size);
        L = eye(r_size);
        for j=1:c_size
            % Rows
            for i=(j + 1):r_size
                %zero needs to be true such that it will 
                % indiate A is not regular
                if (U(j,j))
                    s = U(i,j) / U(j,j);
                    U(i,:) = U(i,:) - (U(j,:) .* s);
                    E(i,:) = E(i,:) - (E(j,:) .* s);
                    L(i,j) = s;
                else
                    fprintf("Matrix Not Regular");
                    break;
                end

            end

            
            % if (~(U(j,j)))
            %     fprintf("Matrix Not Regular");
            %     break;
            % end
        end
    end


    % Backward sub with a matrix multiplication because Why not
    % Inner product style definitions are great since they output a scalar
    % 
    function sol = back_sub(Up, cp)
        c_size = length(Up(1,:));
        sol = ones(c_size, 1);
        sol(c_size, 1) = cp(c_size, 1) / Up(c_size, c_size);

        for m = (c_size - 1):-1:1
            n = m + 1;
            sol(m) = (cp(m) - Up(m,(n:c_size)) * sol(n:c_size,1)) / Up(m,m);
        end

    end


    % foward sub solving Lc = b, but it uses the 
    % inverse that was captured 
    % from the formation of U from A
    % I wonder in a direct head to head if matlab optimizes
    function sol = fwd_sub(ERO, b)
        sol = ERO * b;
    end 

        %% Problem 1 
        % LU Decomposition using Algorithm from Aplied Linear Algebra
        % by Shakiban et al
        function x = LU_solver(A, b)
            [~,Upper, Er] = set_4.get_LUE(A);          
            c = set_4.fwd_sub(Er, b);
            x = set_4.back_sub(Upper, c);
        end



        %% Problem 2 
        % Uses the class method get_LUE(A) to retrieve necessary Matrix
        % factorizations 
        function inverse = LU_inverse(A)
            c_size = length(A(1, :));
            inverse = zeros(c_size,c_size);
            [~, U, E] = set_4.get_LUE(A);
            % creates standard basis k with length n
            e = @(k,n) [zeros(k-1,1);1;zeros(n-k,1)];


            for j =1:c_size
                c = set_4.fwd_sub(E, e(j, c_size));
                inverse(:, j) = set_4.back_sub(U, c);

            end 

        end


    
    
    
    
    
    
    
    
    end
end