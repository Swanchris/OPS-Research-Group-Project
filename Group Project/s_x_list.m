% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors

% OUTPUTS:
% sx_list: column vector containing all differences between sensors and
% relay

function sx_list = s_x_list(s,X)
exit = [];
for i = 1:size(X,1)
    x = [X(i,1), X(i,2)];
    exit = [exit; s-x]
end
sx_list = exit
end
    