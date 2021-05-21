% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors

% OUTPUTS:
% obj: value of objective function for s

function obj = obj_func(s, X)
XNorSq = X_norms_sqrd(s,X);
maxdist = betafunc(s, X);
obj = sum(XNorSq) + maxdist
end