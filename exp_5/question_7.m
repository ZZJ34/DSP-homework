clear
f = [500 800];
fs = 5000;
a = [0 1];
delta = 1; At = 40;
delta_1 = 1 - 10^(-delta/20);
delta_2 = 10^(-At/20);
dev = [delta_2 delta_1];
[M,fpts,mag,wt] = firpmord(f,a,dev,fs);
h = firpm(M,fpts,mag,wt);
[H,w] = freqz(h,1);
plot(w / (2 * pi) * fs, 20 * log(abs(H)));
axis([0,fs/2,-200,10]);
grid;
xlabel('ÆµÂÊ/Hz ');
ylabel('·ù¶È/dB');

