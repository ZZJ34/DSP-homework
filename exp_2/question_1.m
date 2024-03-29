x = 0:0.00000001:0.03;
y = sin(50 * 2 * pi * x) +  sin(500 * 2 * pi * x) + sin(1000 * 2 * pi * x);
subplot(2,1,1);
plot(x,y);
axis([0 0.03 -3.5 3.5]); 
title('original');
Ts = 1/8000;
n = 0:0.03 / Ts;
y = sin(50 * 2 * pi * Ts * n) +  sin(500 * 2 * pi * Ts * n) + sin(1000 * 2 * pi * Ts * n);
subplot(2,1,2);
stem(n,y);
axis([0 0.03 / Ts -3.5 3.5]); 
title('sampling');

