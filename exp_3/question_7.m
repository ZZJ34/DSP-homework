clear
% ɶ���������

%ѭ�����
N = 16;
n = 0:N-1;
xa = xa(n,8,2);
xb = xb(n,0.1,0.0625);
xak = fft(xa, 2 * N);
xbk = fft(xb, 2 * N);
rm = real(ifft(conj(xak) .* xbk));
rm = [rm( N + 2 : 2 * N) rm(1:N)];
m = (-N + 1):(N -1);
stem(m,rm)
xlabel('m');ylabel('����');