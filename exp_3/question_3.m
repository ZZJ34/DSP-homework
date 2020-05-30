%%
N = 8;
n = 0:N-1;
yc = xc(n);
yd = xd(n);
figure(1);

subplot(2,2,1);
stem(n,yc);
title('xc');
xlabel('n');ylabel('xc');
subplot(2,2,3);
stem(n,abs(fft(yc)));
title('Xc FFT 分析');
xlabel('n');ylabel('Xc');

subplot(2,2,2);
stem(n,yd);
title('xd');
xlabel('n');ylabel('xd');
subplot(2,2,4);
stem(n,abs(fft(yd)));
title('Xd FFT 分析');
xlabel('n');ylabel('Xd');

%%
N = 32;
n = 0:N-1;
yc = xc(n);
yd = xd(n);
figure(2);

subplot(2,2,1);
stem(n,yc);
title('xc');
xlabel('n');ylabel('xc');
subplot(2,2,3);
stem(n,abs(fft(yc)));
title('Xc FFT 分析');
xlabel('n');ylabel('Xc');

subplot(2,2,2);
stem(n,yd);
title('xd');
xlabel('n');ylabel('xd');
subplot(2,2,4);
stem(n,abs(fft(yd)));
title('Xd FFT 分析');
xlabel('n');ylabel('Xd');
