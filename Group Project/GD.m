% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors
% lambda : lambda parameter
% k: penalty parameter
% b: max distance between relay and sensors

% OUTPUTS:
% gd: direction for next descent (steepest descent)

function gd = GD(s,X,lambda,k,b)
gd = s - lambda*P_grad(s,X,k,b)
end