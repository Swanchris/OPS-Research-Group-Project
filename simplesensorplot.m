%creates a surface plot for two sensors denoted by x0, x1
syms P(x, y)

x0 = [1 0];
x1 = [-1 0];

P(x, y) = sqrt((x-1)^2+y^2) + sqrt((x+1)^2+y^2) + ...
    max([sqrt((x-1)^2+y^2) sqrt((x+1)^2+y^2)] );
fsurf(P, [-2 2], 'ShowContours', 'on');



