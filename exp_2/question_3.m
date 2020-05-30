f = 1;fs = 16;N = 32;M = 2;L = 3;
n = 0:1:N-1;
x = cos(2 * pi * f / fs * n);
y1 = x(1:M:N);            % ֱ�ӳ�ȡ����
y2 = decimate(x,M);       % �����ʽ���
subplot(3,2,1);
stem(n,x(1:N));
axis([0 N-1 -1 1]); 
title('ԭʼ��������');
xlabel('n');ylabel('����');
% ��ȡ�������˲�
subplot(3,2,3);
n = 0:N/M -1;
stem(n,y1);
title('��ȡ�������˲������');
xlabel('n');ylabel('����');
% ��ȡ�����˲�
subplot(3,2,5);
m = 0:N/M -1;
stem(m,y2);
title('��ȡ�����˲������');
xlabel('n');ylabel('����');

n = 0:1:N-1;
subplot(3,2,2);
stem(n,x(1:N));
axis([0 N-1 -1 1]); 
title('ԭʼ��������');
xlabel('n');ylabel('����');
% �����������ͨ�˲�
y1 = zeros(1,N*L);
y1(1:L:N*L) = x;
m = 0:N*L-1;
subplot(3,2,4);
stem(m,y1(1:N*L));
axis([0 N*L-1 -1 1]); 
title('�ڲ岻���������ͨ�˲����������');
xlabel('n');ylabel('����');
% �����������˲�
y2 = interp(x,L);
subplot(3,2,6);
stem(m,y2(1:N*L));
axis([0 N*L-1 -1 1]); 
title('�ڲ徭���������ͨ�˲����������');
xlabel('n');ylabel('����');



