clear
% 双线性变换法
wc = 2 / 1e-3 * tan( 2 * pi * 300 * 1e-3 /2 );
wt = 2 / 1e-3 * tan( 2 * pi * 200 * 1e-3 /2 );
% 确定边界频率和阶数
[N, wn] = cheb1ord(wc, wt, 0.8, 20, 's');
% 高通滤波器
[B, A] = cheby1(N, 0.8, wn ,'high', 's');
[num, den] = bilinear(B, A, 1000);
[h, w] = freqz(num, den);
f = w ./ (2 * pi) .* 1000;
% 绘图
plot(f, 20 * log10(abs(h)));
xlim([0,500]);
ylim([-150,10])
grid;
xlabel('频率/Hz');
ylabel('幅度/dB');