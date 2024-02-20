%% Basic Matrix Stuff
% 
    % vetor
% x = [4,5]';
% 
    % Matrix
% A = [[1,4]; [9, -7]];
    
% b = A * x;
% 

format longg

A = [[1 1]; [1 1.000000000000001]];

b = [2 2]';

d_a = det(A);

v = A\b


con_A = cond(A)
