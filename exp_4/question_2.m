clear
% 双线性变换法
wp = 2 / 1e-3 * tan( 2 * pi * 200 * 1e-3 /2 );
ws = 2 / 1e-3 * tan( 2 * pi * 300 * 1e-3 /2 );
% 确定边界频率和阶数
[N, wn] = buttord(wp, ws, 1, 25, 's');
% 低通滤波器
[B, A] = butter(N, wn , 's');
[num, den] = bilinear(B, A, 1000);
[h1, w] = freqz(num, den);
f = w ./ (2 * pi) .* 1000;

% 脉冲响应不变法
wp = 2 * pi * 200;
ws = 2 * pi * 300; 
% 确定边界频率和阶数
[N, wn] = buttord(wp, ws, 1, 25, 's');
% 低通滤波器
[B, A] = butter(N, wn , 's');
[num, den] = impinvar(B, A, 1000);
[h2, w] = freqz(num, den);
f = w ./ (2 * pi) .* 1000;
% 绘图
plot(f, 20 * log10(abs(h1)), '-.',f, 20 * log10(abs(h2)), '-');
xlim([0,500]);
ylim([-100,10])
grid;
legend('双线性变换法','脉冲响应不变法');
xlabel('频率/Hz');
ylabel('幅度/dB');
