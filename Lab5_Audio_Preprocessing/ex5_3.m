
%% downsampling & upsampling 
clear;

fp = fopen('16kHz.pcm', 'rb');
x = fread(fp, 'short');
fs = 16000;


figure
subplot(3, 1, 1);
plot(x);
xlabel('time in samples')
title('audio sampled at 16kHz');
sound(x./32766, fs, 16);


%% downsampling
y = decimate(x, 2);      % means downsample from 8kHz
subplot(3, 1, 2);
plot(y);
xlabel('time in samples');
title('audio downsampled at 8kHz');
sound(y./32766, fs/2, 16);


%% upsampling 
z = interp(x, 2);
subplot(3, 1, 3);
plot(z);
xlabel('time in samples');
title('audio upsampled at 32kHz');
sound(z./32766, fs*2, 16);


%% plot specgram from each of the spectrum
figure
subplot(3, 1, 1);
specgram(x, 512, fs, 320);
title('audio sample to 16kHz');
subplot(3, 1, 2);
specgram(y, 512, fs/2, 320);
title('audio downsample to 8kHz');
subplot(3, 1, 3);
specgram(z, 512, fs*2, 320);
title('audio upsample to 32kHz')




