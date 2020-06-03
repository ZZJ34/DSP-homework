clear
% ˫���Ա任��
wp = 2 / 1e-3 * tan( 2 * pi * 200 * 1e-3 /2 );
ws = 2 / 1e-3 * tan( 2 * pi * 300 * 1e-3 /2 );
% ȷ���߽�Ƶ�ʺͽ���
[N, wn] = buttord(wp, ws, 1, 25, 's');
% ��ͨ�˲���
[B, A] = butter(N, wn , 's');
[num, den] = bilinear(B, A, 1000);
[h1, w] = freqz(num, den);
f = w ./ (2 * pi) .* 1000;

% ������Ӧ���䷨
wp = 2 * pi * 200;
ws = 2 * pi * 300; 
% ȷ���߽�Ƶ�ʺͽ���
[N, wn] = buttord(wp, ws, 1, 25, 's');
% ��ͨ�˲���
[B, A] = butter(N, wn , 's');
[num, den] = impinvar(B, A, 1000);
[h2, w] = freqz(num, den);
f = w ./ (2 * pi) .* 1000;
% ��ͼ
plot(f, 20 * log10(abs(h1)), '-.',f, 20 * log10(abs(h2)), '-');
xlim([0,500]);
ylim([-100,10])
grid;
legend('˫���Ա任��','������Ӧ���䷨');
xlabel('Ƶ��/Hz');
ylabel('����/dB');
