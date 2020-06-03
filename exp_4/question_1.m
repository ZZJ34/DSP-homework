clear
% ˫���Ա任��
wc = 2 / 1e-3 * tan( 2 * pi * 300 * 1e-3 /2 );
wt = 2 / 1e-3 * tan( 2 * pi * 200 * 1e-3 /2 );
% ȷ���߽�Ƶ�ʺͽ���
[N, wn] = cheb1ord(wc, wt, 0.8, 20, 's');
% ��ͨ�˲���
[B, A] = cheby1(N, 0.8, wn ,'high', 's');
[num, den] = bilinear(B, A, 1000);
[h, w] = freqz(num, den);
f = w ./ (2 * pi) .* 1000;
% ��ͼ
plot(f, 20 * log10(abs(h)));
xlim([0,500]);
ylim([-150,10])
grid;
xlabel('Ƶ��/Hz');
ylabel('����/dB');