clear
N = 15;
wn = [0.3 , 0.5];
b=fir1(N,wn,ones(N+1,1));
figure(1);
freqz(b);
grid on;
title('矩形 N = 15');

clear
N = 45;
wn = [0.3 , 0.5];
b=fir1(N,wn,ones(N+1,1));
figure(2);
freqz(b);
grid on;
title('矩形 N = 45');

clear
N = 15;
wn = [0.3 , 0.5];
b=fir1(N,wn,blackman(N+1));
figure(3);
freqz(b);
grid on;
title('布莱克曼 N = 15');

clear
N = 45;
wn = [0.3 , 0.5];
b=fir1(N,wn,blackman(N+1));
figure(4);
freqz(b);
grid on;
title('布莱克曼 N = 45');