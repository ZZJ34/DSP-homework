clear
% 巴特沃思
% 双线性变换法
wc = 2 * 8e3 * tan( 2 * pi * 1200 / (2 * 8e3) );
wt = 2 * 8e3 * tan( 2 * pi * 2000 / (2 * 8e3) );
% 确定边界频率和阶数
[N, wn] = buttord(wc, wt, 0.5, 40, 's');
% 低通滤波器
[B, A] = butter(N, wn , 's');
[num, den] = bilinear(B, A, 8000);
[h2, w] = freqz(num, den);
f = w ./ (2 * pi) .* 8000;
% 绘图
figure(1)
plot(f, 20 * log10(abs(h2)));
xlim([0,4000]);
ylim([-150,10])
grid;
xlabel('频率/Hz');
ylabel('幅度/dB');

% 切比雪夫
% 双线性变换法
wc = 2 * 8e3 * tan( 2 * pi * 1200 / (2 * 8e3) );
wt = 2 * 8e3 * tan( 2 * pi * 2000 / (2 * 8e3) );
% 确定边界频率和阶数
[N, wn] = cheb1ord(wc, wt, 0.5, 40, 's');
% 低通滤波器
[B, A] = cheby1(N, 0.5, wn , 's');
[num, den] = bilinear(B, A, 8000);
[h1, w] = freqz(num, den);
f = w ./ (2 * pi) .* 8000;
% 绘图
figure(2)
plot(f, 20 * log10(abs(h1)));
xlim([0,4000]);
ylim([-150,10])
grid;
xlabel('频率/Hz');
ylabel('幅度/dB');

% 椭圆
% 双线性变换法
wc = 2 * 8e3 * tan( 2 * pi * 1200 / (2 * 8e3) ) ;
wt = 2 * 8e3 * tan( 2 * pi * 2000 / (2 * 8e3) ) ;
% 确定边界频率和阶数
[N, wn] = ellipord(wc, wt, 0.5, 40, 's');
% 低通滤波器
[B, A] = ellip(N, 0.5, 40, wn,'low','s');
[num, den] = bilinear(B, A, 8000);
[h3, w] = freqz(num, den);
f = w ./ (2 * pi) .* 8000;
% 绘图
figure(3)
plot(f, 20 * log10(abs(h3)));
xlim([0,4000]);
ylim([-150,10])
grid;
xlabel('频率/Hz');
ylabel('幅度/dB');

figure(4);
plot(f, 20 * log10(abs(h1)), '-.',f, 20 * log10(abs(h2)), '-',f, 20 * log10(abs(h3)), '--');
xlim([0,4000]);
ylim([-100,10])
grid;
legend('巴特沃思','切比雪夫','椭圆');
xlabel('频率/Hz');
ylabel('幅度/dB');