N = 45;
% ���δ�
W1 = ones(N,1);
wvtool(W1);
% ������
W2 = hamming(N);
wvtool(W2);
% ����������
W3 = blackman(N);
wvtool(W3);

wvtool(W1,W2,W3);