[channel, Fs] = audioread('D:\DSP\exp_2\question_6\test.wav');
channel_1 = channel(:,1)';
channel_2 = channel(:,2)';
N = length(channel_1);
L = 4;
% 直接插值
channel_r1 = zeros(1,N*L);
channel_r1(1:L:N*L) = channel_1;
channel_r2 = zeros(1,N*L);
channel_r2(1:L:N*L) = channel_2;
channel_r(:,1) = channel_r1';
channel_r(:,2) = channel_r2';
audiowrite('test_44.1khz_withoutLP.wav',channel_r,48000);
clear channel_r channel_r1 channel_r2 
% 插值后滤波
channel_r1 = interp(channel_1, L);
channel_r2 = interp(channel_2, L);
channel_r(:,1) = channel_r1';
channel_r(:,2) = channel_r2';
audiowrite('test_44.1khz_withLP.wav',channel_r,48000);