% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors
% k: penalty parameter
% b: scalar

% OUTPUTS:
% P_val: value of the penalty function for s

function P_val = P(s,X,k,b)
g = G(s,X,b);
gplus_sq = []
for i = 1:size(g, 1)
    gplus_i = xplus(g(i));
    gplus_sq = [gplus_sq; gplus_i^2];
end
obj_val = obj_func(s, X);
sum_gpsq = sum(g_plus_sq);
P_val = obj_val + (alphafunc(k)/2)*sum_gpsq
end
    