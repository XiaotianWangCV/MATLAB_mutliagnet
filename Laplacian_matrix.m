function [a] = Laplacian_matrix(m)
%UNTITLED3 生成一个随机的Laplacian方阵
%   2018年12月26日
%   方阵大小为m

a = rand(m);

for irow = 1:m
    a(irow, :) = a(irow, :)/sum(a(irow, :));
end

a = eye(m)-a;

end

% example:
%     0.3340   -0.1057   -0.2283
%    -0.2708    0.6806   -0.4099
%    -0.3095   -0.6383    0.9477