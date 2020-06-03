clear
fs = 10000;
fr = [500,3000];
fc = [1000,2000];
delta = 3; At = 18;
% 双线性变换
wp = 2 * fs * tan( 2 * pi * fc  / 2 / fs);
ws = 2 * fs * tan( 2 * pi * fr  / 2 / fs);
[N, wn] = cheb1ord(wp, ws, delta, At, 's');
[B, A] = cheby1(N, delta, wn , 'stop' , 's');
[num, den] = bilinear(B, A, fs);
[h, w] = freqz(num, den);
f = w ./ (2 * pi) .* fs;

plot(f, 20 * log10(abs(h)));
xlim([0,4000]);
ylim([-150,10]);
grid;
xlabel('频率/Hz');
ylabel('幅度/dB');