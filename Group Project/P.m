% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors
% k: penalty parameter
% b: scalar

% OUTPUTS:
% p_val: value of penalty function at s
function p_val = P(s, X, k, b)
out = [];
g_is = [];
for i = 1:size(X,1)
    x_i = [X(i,1), X(i,2)];
    out = [out; norm(s - x_i)^2]
end
sum_out = sum(out) + b;
for i=1:size(s_x_list(s, X),1)
    g = out(i)-b;
    g_plus = max([0,g^2]);
    g_is= [g_is; g_plus]
end
sum_gis = sum(g_is)*2^(k-1);
p_val = sum_out + sum_gis
end