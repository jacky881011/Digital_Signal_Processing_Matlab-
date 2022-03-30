clear;

%% set the num and den
num = [1, -6.9, 13.4, -7.2];
den = [1, -1.3, 0.47, -0.035];


%% consist of two signal

f10 = 10;
f30 = 30;
T = 0.01; N = 100; n = 0:1:N-1;

x = sin(2*pi*f10*n*T) + sin(2*pi*f30*n*T);

%% plot the consist of two original input signal
figure
subplot(2,1,1);
stem(n, x);
xlabel('time index'); ylabel('x[n]');

%% plot the dft signal
f = n/T/N;
subplot(2,1,2);
stem(f, abs(fft(x)));
xlabel('frequency in Hz'); ylabel('|X(f)|');





%% filter of the sine signal to output y[n]
hold on
figure
y = filter(num, den, x);
subplot(2,1,1);
stem(n, y);
xlabel('time index'); ylabel('y[n]');



%% plot the fft of y[n]
subplot(2,1,2);
stem(f, abs(fft(y)));
xlabel('frequency in Hz'); ylabel('|Y(f)|');








