[channel, Fs] = audioread('D:\DSP\exp_2\question_5\test.wav');
channel_1 = channel(:,1)';
channel_2 = channel(:,2)';
%%
% 44.1khz ת 48 khz
L = 160; M = 147;
channel_r1 = decimate(interp(channel_1, L), M);
channel_r2 = decimate(interp(channel_2, L), M);
channel_r(:,1) = channel_r1';
channel_r(:,2) = channel_r2';
audiowrite('test_48khz.wav',channel_r,48000);
clear channel_r channel_r1 channel_r2 
%%
% 44.1khz ת 32 khz
L = 320; M = 441;
channel_r1 = decimate(interp(channel_1, L), M);
channel_r2 = decimate(interp(channel_2, L), M);
channel_r(:,1) = channel_r1';
channel_r(:,2) = channel_r2';
audiowrite('test_32khz.wav',channel_r,32000);
clear channel_r channel_r1 channel_r2 
%%
% 44.1khz ת 22.05 khz
L = 1;M = 2;
channel_r1 = decimate(interp(channel_1, L), M);
channel_r2 = decimate(interp(channel_2, L), M);
channel_r(:,1) = channel_r1';
channel_r(:,2) = channel_r2';
audiowrite('test_22.05khz.wav',channel_r,22050);
clear channel_r channel_r1 channel_r2 
%%
% 44.1khz ת 16 khz
L = 160; M = 441;
channel_r1 = decimate(interp(channel_1, L), M);
channel_r2 = decimate(interp(channel_2, L), M);
channel_r(:,1) = channel_r1';
channel_r(:,2) = channel_r2';
audiowrite('test_16khz.wav',channel_r,16000);
clear channel_r channel_r1 channel_r2 
%%
% 44.1khz ת 8 khz
L = 80; M = 441;
channel_r1 = decimate(interp(channel_1, L), M);
channel_r2 = decimate(interp(channel_2, L), M);
channel_r(:,1) = channel_r1';
channel_r(:,2) = channel_r2';
audiowrite('test_8khz.wav',channel_r,8000);

