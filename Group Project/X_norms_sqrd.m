% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors

% OUTPUTS:
% norms = column vector containing all the norms between s and relays

function norms = X_norms_sqrd(s, X)
out = [];
for i = 1:size(X,1)
    x_i = [X(i,1), X(i,2)];
    out = [out; norm(s - x_i)]
end
norms = out
end