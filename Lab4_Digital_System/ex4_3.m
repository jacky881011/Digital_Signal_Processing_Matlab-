clear;

%% set the all pass filter
num = [-0.5 1];
den = [1 -0.5];


%% sine 10 Hz
f0 = 10;
T = 0.01;
N = 100;

n = 0:1:N-1;
x = sin(2*pi*f0*n*T);

%% plot the sine signal
figure
subplot(4, 1, 1); 
stem(n, x);

%% plot the fft of sine signal
f= n/T/N;
subplot(4, 1, 2);
stem(f, abs(fft(x)));

%% filter of the sine signal
y = filter(num, den, x);
subplot(4, 1, 3);
stem(n, y);


%% abs of the fft(y)

subplot(4, 1, 4);
stem(f, abs(fft(y)));


