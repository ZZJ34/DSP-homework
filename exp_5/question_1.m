N = 45;
% 矩形窗
W1 = ones(N,1);
wvtool(W1);
% 汉明窗
W2 = hamming(N);
wvtool(W2);
% 布莱克曼窗
W3 = blackman(N);
wvtool(W3);

wvtool(W1,W2,W3);