% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors
% k: penalty parameter
% b: scalar

% OUTPUTS:
% grad: gradient of objective function at s

function grad = gradient_function(s, X, k, b)
N = X_norms_sqrd(s, X);
s_minus_x = s_x_list(s, X);
g_max = []
if max(X_norms_sqrd(s, X)) < b
    b = max(X_norms_sqrd(s, X))
end
for i=1:size(s_minus_x,1)
    g = N(i)-b;
    g_plus = max([0,g]);
    g_max = [g_max;s_minus_x(i)*g_plus]
end
grad = 2*sum(s_minus_x) + 2*(k^2)*sum(g_max)
end