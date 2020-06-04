clear
N = 15;
wn = [0.3 , 0.5];
b=fir1(N,wn,hanning(N+1));
figure(1);
freqz(b);
grid on;
title('N = 15');

clear
N = 45;
wn = [0.3 , 0.5];
b=fir1(N,wn,hanning(N+1));
figure(2);
freqz(b);
grid on;
title('N = 45');