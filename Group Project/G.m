% INPUTS: 
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors
% b: max distance between relay and sensors

% OUTPUTS:
% g: column vector containing  values of all g_i constraints at s

function g = G(s,X,b)
out = []
for i = 1:size(X,1)
    x_i = [X(i, 1), X(i,2)];
    g_i = norm(s, x_i) - b;
    out = [out; g_i]
end
g = out
end
    