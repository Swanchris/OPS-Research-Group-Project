% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors
% k: penalty parameter
% b: max distance between relay and sensors
% step: step size parameter

% OUTPUTS:
% gd: direction for next descent (steepest descent)

function gd = GD(s,X,k,b,step)
gd = s - step*gradient_function(s,X,k,b)
end