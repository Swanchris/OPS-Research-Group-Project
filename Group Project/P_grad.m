% INPUTS:
% s: row vector of relay
% X: matrix of row vectors containing all coordinates of sensors
% k: penalty parameter
% b: max distance between relay and sensors

% OUTPUTS:
% gradP: row vector showing gradient of P at s

function gradP = P_grad(s,X,k,b)
s_minus_x_1 = [];
G_sum_1 = [];
mult_terms_1 = [];

for i=1:size(X,1)
    s_minus_x_1 = [s_minus_x_1, s(1)-X(i,1)]
end
for i=1:size(X,1)
    g_i = (s(1) - X(i,1))^2 - b;
    G_sum_1 = [G_sum_1, g_i]
end
for i=1:size(X,1)
    mt_i = s_minus_x_1(i)*G_sum_1(i);
    G_sum_1 = [G_sum_1, xplus(mt_i)]
end

g1 =2*sum(s_minus_x_1) + 2*alphafunc(k)*sum(mult_terms_1)

s_minus_x_2 = [];
G_sum_2 = [];
mult_terms_2 = [];

for i=1:size(X,1)
    s_minus_x_2 = [s_minus_x_2, s(1)-X(i,1)]
end
for i=1:size(X,1)
    g_i = (s(1) - X(i,1))^2 - b;
    G_sum_2 = [G_sum_2, g_i]
end
for i=1:size(X,1)
    mt_i = s_minus_x_1(i)*G_sum_2(i);
    G_sum_2 = [G_sum_2, xplus(mt_i)]
end

g2 =2*sum(s_minus_x_2) + 2*alphafunc(k)*sum(mult_terms_2);

gradP = [g1,g2]
end