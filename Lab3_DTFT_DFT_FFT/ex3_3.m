clear;
x = [1 1 1 1 1 1 1 1 1 1];
n = 0 : length(x) - 1;
N = 10;

k = 0:N-1;

X = x * exp(-j*2*pi/N*n'*k);
magx = abs(X);
angx = angle(X);

figure 
subplot(2, 1, 1);
stem(k, magx,'b', LineWidth= 1.3);
xlabel('frequency index k');
ylabel('|X[k]|');
title('10-pt DFT of x[n]');
subplot(2, 1, 2);
stem(k, angx, 'b', LineWidth= 1.3);
xlabel('frequency index k');
ylabel('arg(X[k])');