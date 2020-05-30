f1 = 0.04; f2 = 0.3; N = 50; M = 3; L = 5;
n = 0:N-1;
x = sin(2 * pi * f1 * n ) + sin(2 * pi * f2 * n);
y1 = interp(x, L);       %内插
y2 = decimate(y1, M);    %抽取
len = length(y2);
subplot(2,1,1);
stem(n,x)
axis([0 N-1 -2 2]); 
title('转换前');
xlabel('n');ylabel('幅度');
subplot(2,1,2);
stem(0:len-1,y2)
axis([0 len-1 -2 2]); 
title('转换后');
xlabel('n');ylabel('幅度');
