clear
N = 40;
% ��һ���ܷѾ�
Hk=[zeros(1,3) 0.5 ones(1,5) 0.5 zeros(1,1) 0.5 ones(1,5) 0.5 zeros(1,2)...?
zeros(1,2) -0.5 -ones(1,5) -0.5 zeros(1,1) -0.5 -ones(1,5) -0.5 zeros(1,3)];
k = 0:N-1;
hn = real(ifft(Hk .* exp(-1i * pi * (N - 1) * k / N)));
[h,w] = freqz(hn,1);
plot(w / pi, 20 * log(abs(h)));
axis([0,1,-200,5]);
grid;
xlabel('��һ��Ƶ��/\Pi ');
ylabel('����/dB');
title('Ƶ�ʲ��������ר��������λ�˲���');

