N = 20;
n = 0:N-1;
y1 = xa(n,8,2);
y2 = xa(n,8,4);
y3 = xa(n,8,8);
[h1,w1] = freqz(y1);
[h2,w2] = freqz(y2);
[h3,w3] = freqz(y3);
figure(1);
% p=8,q=2
subplot(3,3,1);
stem(n,y1);
title('p=8,q=2');
xlabel('n');ylabel('Xa');
% p=8,q=4
subplot(3,3,2);
stem(n,y2);
title('p=8,q=4');
xlabel('n');ylabel('Xa');
% p=8,q=8
subplot(3,3,3);
stem(n,y3);
title('p=8,q=8');
xlabel('n');ylabel('Xa');

% p=8,q=2 的幅频
subplot(3,3,4);
plot(w1(1:512),abs(h1(1:512)));
title('p=8,q=2 幅频');
xlim([0,w1(512)]);
xlabel('w');ylabel('幅度');
% p=8,q=4 的幅频
subplot(3,3,5);
plot(w2(1:512),abs(h2(1:512)));
title('p=8,q=4 幅频');
xlim([0,w2(512)]);
xlabel('w');ylabel('幅度');
% p=8,q=8 的幅频
subplot(3,3,6);
plot(w3(1:512),abs(h3(1:512)));
title('p=8,q=8 幅频');
xlim([0,w3(512)]);
xlabel('w');ylabel('幅度');

% p=8,q=2 的相频
subplot(3,3,7);
plot(w1(1:512),angle(h1(1:512)));
xlim([0,w1(512)]);
title('p=8,q=2 相频');
xlabel('w');ylabel('角度');
% p=8,q=4 的相频
subplot(3,3,8);
plot(w2(1:512),angle(h2(1:512)));
xlim([0,w2(512)]);
title('p=8,q=4 相频');
xlabel('w');ylabel('角度');
% p=8,q=8 的相频
subplot(3,3,9);
plot(w3(1:512),angle(h3(1:512)));
xlim([0,w3(512)]);
title('p=8,q=8 相频');
xlabel('w');ylabel('角度');


%%
y1 = xa(n,8,8);
y2 = xa(n,13,8);
y3 = xa(n,14,8);
[h1,w1] = freqz(y1);
[h2,w2] = freqz(y2);
[h3,w3] = freqz(y3);
figure(2);
% p=8,q=8
subplot(3,3,1);
stem(n,y1);
title('p=8,q=8');
xlabel('n');ylabel('Xa');
% p=13,q=8
subplot(3,3,2);
stem(n,y2);
title('p=13,q=8');
xlabel('n');ylabel('Xa');
% p=14,q=8
subplot(3,3,3);
stem(n,y3);
title('p=14,q=8');
xlabel('n');ylabel('Xa');

% p=8,q=8 的幅频
subplot(3,3,4);
plot(w1(1:512),abs(h1(1:512)));
title('p=8,q=8 幅频');
xlim([0,w1(512)]);
xlabel('w');ylabel('幅度');
% p=13,q=8 的幅频
subplot(3,3,5);
plot(w2(1:512),abs(h2(1:512)));
title('p=13,q=8 幅频');
xlim([0,w2(512)]);
xlabel('w');ylabel('幅度');
% p=14,q=8 的幅频
subplot(3,3,6);
plot(w3(1:512),abs(h3(1:512)));
title('p=14,q=8 幅频');
xlim([0,w3(512)]);
xlabel('w');ylabel('幅度');

% p=8,q=8 的相频
subplot(3,3,7);
plot(w1(1:512),angle(h1(1:512)));
xlim([0,w1(512)]);
title('p=8,q=8 相频');
xlabel('w');ylabel('角度');
% p=13,q=8 的相频
subplot(3,3,8);
plot(w2(1:512),angle(h2(1:512)));
xlim([0,w2(512)]);
title('p=13,q=8 相频');
xlabel('w');ylabel('角度');
% p=14,q=8 的相频
subplot(3,3,9);
plot(w3(1:512),angle(h3(1:512)));
xlim([0,w3(512)]);
title('p=14,q=8 相频');
xlabel('w');ylabel('角度');




