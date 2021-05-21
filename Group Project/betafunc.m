% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors

% OUTPUTS:
% maxdist: largest distance between s and sensors

function maxdist = betafunc(s, X)
XNorSq = X_norms_sqrd(s,X);
maxdist = max(XNorSq)
end