clear
fs = 30000;
fr = [1500,6000];
fc = [2000,3000];
delta = 3; At = 20;
% 脉冲响应响应不变法
wp = 2 * pi * fc;
ws = 2 * pi * fr;
[N1, wn1] = buttord(wp, ws, delta, At, 's');
[B1, A1] = butter(N1, wn1 , 's');
[num1, den1] = impinvar(B1, A1, fs);
[h1, w] = freqz(num1, den1);
f = w ./ (2 * pi) .* fs;
% 双线性变换
wp = 2 * fs * tan( 2 * pi * fc  / 2 / fs);
ws = 2 * fs * tan( 2 * pi * fr  / 2 / fs);
[N2, wn2] = buttord(wp, ws, delta, At, 's');
[B2, A2] = butter(N2, wn2 , 's');
[num2, den2] = bilinear(B2, A2, fs);
[h2, w] = freqz(num2, den2);
f = w ./ (2 * pi) .* fs;



plot(f, 20 * log10(abs(h1)), '-.',f, 20 * log10(abs(h2)), '-');
grid;
xlim([0,10000]);
ylim([-100,10])
legend('脉冲响应不变法','双线性变换法');
xlabel('频率/Hz');
ylabel('幅度/dB');