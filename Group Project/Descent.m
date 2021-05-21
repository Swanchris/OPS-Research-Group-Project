% INPUTS:
% s0: row vector of initial relay location
% X: matrix of row vectors containing all coordinates of sensors
% init_step: initial step parameter
% epsilon: algorithm termination threshold parameter

% OUTPUTS:
% steps: matrix showing relay coordinates for each step of descent 
% norms: column vector showing norm for each relay position

function [steps, norms] = Descent(s0, X, init_step, epsilon)
b = betafunc(s0,X);
k = 1;
s_list = [s0];
lambda = init_step;
s1 = GD(s0,X,lambda,k,b);
s_list = [s_list; s1];
N = norm(P_grad(s1,X,k,b))^2;
norm_list = [N];

while N > epsilon
    b = betafunc(s0, X);
    lambda = stepsize(s1,s0,X,k,b);
    s0 = s1;
    s1 = GD(s0,X,lambda,k,b);
    s_list = [s_list; s1];
    N = norm(P_grad(s1,X,k,b))^2;
    norm_list = [norm_list; N];
    k = k+1
end
steps = s_list;
norms = norm_list
end
