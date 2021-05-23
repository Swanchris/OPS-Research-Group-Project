% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors
% epsilon: algorithm termination threshold parameter

% OUTPUTS:
% steps: matrix showing relay coordinates for each step of descent 
% norms: column vector showing norm for each relay position

function [steps, norms] = Descent(s, X, epsilon)
s0 = s;
k = 1;
beta = max(X_norms_sqrd(s0, X));
s_list = [s0];
lambda = 1/(max(svd(X*transpose(X))));
theta = 1e20;
s1 = GD(s0,X,k,beta, lambda);
s_list = [s_list; s1];
N = norm(gradient_function(s1,X,k,beta));
norm_list = [N];

while N > epsilon
    old_lambda = lambda
    min1 = sqrt(1+theta)*old_lambda;
    delta_grad = gradient_function(s1,X,k,beta)-gradient_function(s0,X,k,beta);
    min2 = norm(s1-s0)/(2*norm(delta_grad));
    lambda = min([min1, min2]);
    theta = lambda/old_lambda;
    s0 = s1;
    s1 = GD(s0,X,k,beta,lambda);
    s_list = [s_list; s1];
    N = norm(gradient_function(s1,X,k,beta));
    norm_list = [norm_list; N];
    k = k+1
end
steps = s_list;
norms = norm_list
end
