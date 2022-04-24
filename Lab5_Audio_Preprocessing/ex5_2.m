

%% Read a pcm file
clear;
fp = fopen("16kHz.pcm", 'rb');
x = fread(fp, 'short');
fclose(fp);

%% Read, plot, and play the wav file

fs= 16000;
n = 0: length(x) - 1;

t= n / fs;              % sample rate to get the spot

figure
plot(t, x);
xlabel('time in the second');
title('audio sampled at 16kz');

sound(x./32766, fs, 16);
specgram(x, 512, fs, 320);          % just find the one dft 


