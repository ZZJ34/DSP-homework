f = 1;fs = 16;N = 32;M = 2;L = 3;
n = 0:1:N-1;
x = cos(2 * pi * f / fs * n);
y1 = x(1:M:N);            % 直接抽取序列
y2 = decimate(x,M);       % 采样率降低
subplot(3,2,1);
stem(n,x(1:N));
axis([0 N-1 -1 1]); 
title('原始输入序列');
xlabel('n');ylabel('幅度');
% 抽取不经过滤波
subplot(3,2,3);
n = 0:N/M -1;
stem(n,y1);
title('抽取不经过滤波的输出');
xlabel('n');ylabel('幅度');
% 抽取经过滤波
subplot(3,2,5);
m = 0:N/M -1;
stem(m,y2);
title('抽取经过滤波的输出');
xlabel('n');ylabel('幅度');

n = 0:1:N-1;
subplot(3,2,2);
stem(n,x(1:N));
axis([0 N-1 -1 1]); 
title('原始输入序列');
xlabel('n');ylabel('幅度');
% 不经抗镜像低通滤波
y1 = zeros(1,N*L);
y1(1:L:N*L) = x;
m = 0:N*L-1;
subplot(3,2,4);
stem(m,y1(1:N*L));
axis([0 N*L-1 -1 1]); 
title('内插不经抗镜像低通滤波的输出序列');
xlabel('n');ylabel('幅度');
% 经过抗镜像滤波
y2 = interp(x,L);
subplot(3,2,6);
stem(m,y2(1:N*L));
axis([0 N*L-1 -1 1]); 
title('内插经过抗镜像低通滤波的输出序列');
xlabel('n');ylabel('幅度');



