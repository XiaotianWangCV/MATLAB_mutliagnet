function [a] = row_matrix(m)
%UNTITLED3 生成一个行随机方阵
%   2018年12月25日
%   方阵大小为m

a = rand(m);

for irow = 1:m
    a(irow, :) = a(irow, :)/sum(a(irow, :));
end

end

% example
%     0.2511    0.4183    0.3306
%     0.2027    0.2391    0.5582
%     0.1360    0.8527    0.0113