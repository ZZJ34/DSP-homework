N = 16;
delta_f = 1/16;
n = 0:N-1;
x = sin(2 * pi * 0.125 * n) + cos(2 * pi * ( 0.125 + delta_f) * n);

figure(1);

subplot(2,2,1);
stem(n,x);
title('delta f = 1/16');
xlabel('n');ylabel('x');
subplot(2,2,3);
stem(n,abs(fft(n)));
title('delta f = 1/16 FFT 分析');
xlabel('n');ylabel('X');

delta_f = 1/64;
n = 0:N-1;
x = sin(2 * pi * 0.125 * n) + cos(2 * pi * ( 0.125 + delta_f) * n);

subplot(2,2,2);
stem(n,x);
title('delta f = 1/64');
xlabel('n');ylabel('x');
subplot(2,2,4);
stem(n,abs(fft(x)));
title('delta f = 1/64 FFT 分析');
xlabel('n');ylabel('X');

%%
N = 128;
delta_f = 1/16;
n = 0:N-1;
x = sin(2 * pi * 0.125 * n) + cos(2 * pi * ( 0.125 + delta_f) * n);

figure(2);

subplot(2,2,1);
stem(n,x);
xlim([0,n(N)]);
title('delta f = 1/16');
xlabel('n');ylabel('x');
subplot(2,2,3);
stem(n,abs(fft(n)));
xlim([0,n(N)]);
title('delta f = 1/16 FFT 分析');
xlabel('n');ylabel('X');

delta_f = 1/64;
n = 0:N-1;
x = sin(2 * pi * 0.125 * n) + cos(2 * pi * ( 0.125 + delta_f) * n);

subplot(2,2,2);
stem(n,x);
xlim([0,n(N)]);
title('delta f = 1/64');
xlabel('n');ylabel('x');
subplot(2,2,4);
stem(n,abs(fft(x)));
xlim([0,n(N)]);
title('delta f = 1/64 FFT 分析');
xlabel('n');ylabel('X');
