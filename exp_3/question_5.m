clear
N = 16;
n = 0:N-1;
% ���Ծ��
xa = xa(n,8,2);
xb = xb(n,0.1,0.0625);
r1 = conv(xa,xb);
% ѭ�����
Xa = fft(xa,16);
Xb = fft(xb,16);
Xr = Xa .* Xb;
r2 = ifft(Xr,16);