import set_4.*

% LU_tester

% comment/uncomment the code as needed

% unsuppress the lines to see what they do!

n=5; % the size of the system, i.e., n=length of x, nxn is the size of U10

%%%%%%%%%%%%

% back_sub %

%%%%%%%%%%%%

b =rand([1,n])';

A=rand([n,n]);

% the following two should give the same output

x_test=A\b;

x_mine= set_4.LU_solver(A, b);

%%%%%%%%%%%%%%%

% Inverse %

%%%%%%%%%%%%%%%


% the following two should give the same output

inv_test = inv(A);

inv_mine = set_4.LU_inverse(A);

A*inv_mine

%%%%%%%%%%%%%

% LU_decomp %

%%%%%%%%%%%%%

