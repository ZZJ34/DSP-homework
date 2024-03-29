N = 20;
n = 0:N-1;
y = xb(n,0.1,0.0625);
[h,w] = freqz(y);
figure(1);
% a=0.1,f=0.0625
subplot(3,1,1);
stem(n,y);
title('a=0.1,f=0.0625');
xlabel('n');ylabel('Xb');
% a=0.1,f=0.0625 �ķ�Ƶ
subplot(3,1,2);
plot(w(1:512),abs(h(1:512)));
title('a=0.1,f=0.0625 ��Ƶ');
xlim([0,w(512)]);
xlabel('w');ylabel('����');
% a=0.1,f=0.0625 ����Ƶ
subplot(3,1,3);
plot(w(1:512),angle(h(1:512)));
xlim([0,w(512)]);
title('a=0.1,f=0.0625 ��Ƶ');
xlabel('w');ylabel('�Ƕ�');

%%
figure(2);
y1 = xb(n,0.1,0.4375);
y2 = xb(n,0.1,0.5625);
[h1,w1] = freqz(y1);
[h2,w2] = freqz(y2);
% a=0.1,f=0.4375
subplot(3,2,1);
stem(n,y1);
title('a=0.1,f=0.4375');
xlabel('n');ylabel('Xb');
% a=0.1,f=0.4375 �ķ�Ƶ
subplot(3,2,3);
plot(w1(1:512),abs(h1(1:512)));
title('a=0.1,f=0.4375 ��Ƶ');
xlim([0,w1(512)]);
xlabel('w');ylabel('����');
% a=0.1,f=0.4375 ����Ƶ
subplot(3,2,5);
plot(w1(1:512),angle(h1(1:512)));
xlim([0,w1(512)]);
title('a=0.1,f=0.4375 ��Ƶ');
xlabel('w');ylabel('�Ƕ�');


% a=0.1,f=0.5625
subplot(3,2,2);
stem(n,y2);
title('a=0.1,f=0.5625');
xlabel('n');ylabel('Xb');
% a=0.1,f=0.5625 �ķ�Ƶ
subplot(3,2,4);
plot(w2(1:512),abs(h2(1:512)));
title('a=0.1,f=0.5625 ��Ƶ');
xlim([0,w2(512)]);
xlabel('w');ylabel('����');
% a=0.1,f=0.5625 ����Ƶ
subplot(3,2,6);
plot(w2(1:512),angle(h2(1:512)));
xlim([0,w2(512)]);
title('a=0.1,f=0.5625 ��Ƶ');
xlabel('w');ylabel('�Ƕ�');
