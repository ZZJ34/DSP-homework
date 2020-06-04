clear
N = 40;
f = [0 0.2 0.2 0.4 0.4 0.6 0.6 0.8 0.8 1];
a = [0 0 1 1 0 0 1 1 0 0];

delta = 4;
h = fir2(N,f,a,kaiser(N+1,delta));
[h1, w1] = freqz(h,1);
subplot(3,1,1);
plot(w1 / pi, 20 * log(abs(h1)));
axis([0,1,-200,5]);
grid;
title('delta = 4');

delta = 6;
h = fir2(N,f,a,kaiser(N+1,delta));
[h2, w2] = freqz(h,1);
subplot(3,1,2);
plot(w2 / pi, 20 * log(abs(h2)));
axis([0,1,-250,5]);
grid;
title('delta = 6');

delta = 10;
h = fir2(N,f,a,kaiser(N+1,delta));
[h3, w3] = freqz(h,1);
subplot(3,1,3);
plot(w3 / pi, 20 * log(abs(h3)));
axis([0,1,-300,5]);
grid;
title('delta = 10');