clear
N = 40;
% 这一步很费劲
Hk=[zeros(1,3) 0.5 ones(1,5) 0.5 zeros(1,1) 0.5 ones(1,5) 0.5 zeros(1,2)...?
zeros(1,2) -0.5 -ones(1,5) -0.5 zeros(1,1) -0.5 -ones(1,5) -0.5 zeros(1,3)];
k = 0:N-1;
hn = real(ifft(Hk .* exp(-1i * pi * (N - 1) * k / N)));
[h,w] = freqz(hn,1);
plot(w / pi, 20 * log(abs(h)));
axis([0,1,-200,5]);
grid;
xlabel('归一化频率/\Pi ');
ylabel('幅度/dB');
title('频率采样法设计专用线性相位滤波器');

