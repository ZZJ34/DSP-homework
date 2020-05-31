clear
N = 16;
n = 0:N-1;
xa = xa(n,8,2);
xb = xb(n,0.1,0.0625);
xak = fft(xa, 2 * N);
xbk = fft(xb, 2 * N);
rm1 = real(ifft(conj(xak) .* xak));
rm1 = [rm1( N + 2 : 2 * N) rm1(1:N)];
m = (-N + 1):(N -1);
subplot(2,1,1)
stem(m,rm1)
title('xa');
xlabel('m');ylabel('류똑');

rm2 = real(ifft(conj(xbk) .* xbk));
rm2 = [rm2( N + 2 : 2 * N) rm2(1:N)];
subplot(2,1,2)
stem(m,rm2)
title('xb');
xlabel('m');ylabel('류똑');
