clear;
Length = 1;
T = 0.01;           % sample rate
N = Length/T;
n = 0:1:N-1;
f1 = 10;
f2 = 30;

x = sin(2*pi*f1*n*T) + sin(2*pi*f2*n*T);

fft_x = fft(x);
magx = abs(fft_x);
angx = angle(fft_x);


figure
subplot(2, 1, 1);
stem(n, magx,'m');
title('Consist of two diagram (0.01 sampling rate)');

subplot(2, 1, 2);
stem(n, angx, 'm');

