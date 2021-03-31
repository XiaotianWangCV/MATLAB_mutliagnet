%V1.06
%修改判断一致性的方式,更改为固定时长
%2018年12月26日

m = 6;  %multi-agents的个数
step_size = 0.001;  %仿真步长，数值越小，伪连续程度越高
X=100*rand(m,1);    %状态矩阵
show_X = X';    %串级每次X的数值，从而可以将X的变化过程打印出来
disp(X);
% disp(sum(X));
object_matrix = sum(X)*ones(m,1)/m; %目标矩阵

D = Laplacian_matrix(m);  %产生的随机邻接矩阵
 
% error = inf;  %目前的矩阵与目标矩阵的差值
% loop_time = 0; %循环次数，即信息交换次数，来判断策略的优劣
dead_band = 0.3;  %判断是否达到一致的死区值
for i = 1:8000
%     error = sum(abs(object_matrix-X));
    X = X-step_size*D*X;
    show_X = cat(1,show_X,X');
%     loop_time = loop_time+step_size;
end

error = sum(abs(object_matrix-X));
disp(X);
% disp(error); 
% disp(loop_time);
% str1 = ['The loop time is ',num2str(loop_time)];
str2 = ['The error is ',num2str(error)];
plot(show_X,'LineWidth',2);
% title({str1;str2});
title(str2);
xlabel('迭代次数')
ylabel('信息状态')
ax = gca;
ax.FontSize = 13;
legend('航行体1','航行体2','航行体3','航行体4','航行体5','航行体6')