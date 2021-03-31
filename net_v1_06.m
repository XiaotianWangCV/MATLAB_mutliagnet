%V1.06
%�޸��ж�һ���Եķ�ʽ,����Ϊ�̶�ʱ��
%2018��12��26��

m = 6;  %multi-agents�ĸ���
step_size = 0.001;  %���沽������ֵԽС��α�����̶�Խ��
X=100*rand(m,1);    %״̬����
show_X = X';    %����ÿ��X����ֵ���Ӷ����Խ�X�ı仯���̴�ӡ����
disp(X);
% disp(sum(X));
object_matrix = sum(X)*ones(m,1)/m; %Ŀ�����

D = Laplacian_matrix(m);  %����������ڽӾ���
 
% error = inf;  %Ŀǰ�ľ�����Ŀ�����Ĳ�ֵ
% loop_time = 0; %ѭ������������Ϣ�������������жϲ��Ե�����
dead_band = 0.3;  %�ж��Ƿ�ﵽһ�µ�����ֵ
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
xlabel('��������')
ylabel('��Ϣ״̬')
ax = gca;
ax.FontSize = 13;
legend('������1','������2','������3','������4','������5','������6')