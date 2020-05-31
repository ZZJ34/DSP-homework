clear
N = 512;
n = 0:N-1;
x = randn(size(n));
X = fft(x,N);
subplot(4,1,1);
stem(n,abs(X));
xlim([0,length(X)]);
xlabel('n');ylabel('����');
title('���ǰ');

% ������ԭʼ����
xx = conv(x,x);
XX = fft(xx,length(xx));
n = 0:2 * N -2;
subplot(4,1,2);
stem(n,abs(XX));
xlim([0,length(XX)]);
xlabel('n');ylabel('����');
title('�����');

% �ص���ӷ�
step = 64;
for i = 0:7
    y(i+1,:) = x(i * step + 1 : (i+1) * step);
end
% ÿ��ֱ���о��
for i = 0:7
    Y(i+1,:) = conv(y(i+1,:),x);
end
Yr = zeros(8,1023);
% �ص����
for i = 0:7
    Yr(i+1,i * 64 + 1:i * 64 + 575) = Y(i+1,1:575);
end
R = zeros(1,1023);
for i = 0:7
    R = R + Yr(i+1,:);
end
subplot(4,1,3);
stem(1:1023,abs(fft(R)));
xlim([0,length(R)]);
xlabel('n');ylabel('����');
title('�ص���� �����');

% �ص�������
% ����
