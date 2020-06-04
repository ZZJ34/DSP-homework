clear
N = 40;
f = [0 0.19 0.2 0.4 0.41 0.59 0.6 0.8 0.81 1];
a = [0 0 1 1 0 0 1 1 0 0];
wt = [2 1 2 1 2];
h = firpm(N-1, f, a, wt);
[H,w] = freqz(h,1);
plot(w / pi, 20 * log(abs(H)));
axis([0,1,-110,10]);
grid;
xlabel('归一化频率/\Pi ');
ylabel('幅度/dB');
