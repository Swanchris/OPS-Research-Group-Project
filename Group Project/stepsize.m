% INPUTS:
% s1: new sensor location
% s0: current sensor location
% X: matrix of row vectors containing all coordinates of sensors
% k: penalty parameter
% b: max distance between relay and sensors

% OUTPUTS:
% ss: scalar for step size

function ss = stepsize(s1, s0, X, k, b)
num = dot((s1-s0),(P_grad(s1, X, k, b)-P_grad(s0, X, k, b)));
denom = norm(P_grad(s1, X, k, b)-P_grad(s0, X, k, b))^2;
ss = num/denom
end