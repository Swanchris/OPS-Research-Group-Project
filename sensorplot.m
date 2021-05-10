%creates a surface plot for sensors denoted by x0, x1, x2
syms P(x, y)

x0 = [1 0];
x1 = [-1 0];
x2 = [0 1];

P(x, y) = sqrt((x-2)^2+y^2) + sqrt((x+2)^2+y^2) + sqrt(x^2 + (y-2)^2) + ...
    max([sqrt((x-2)^2+y^2) sqrt((x+2)^2+y^2) sqrt(x^2 + (y-2)^2)] );
fsurf(P, [-2 2], 'ShowContours', 'on');



