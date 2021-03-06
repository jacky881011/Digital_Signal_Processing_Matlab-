clear;
f1 = 10;   
f2 = 30;

length = 1;

T = 0.01;

N = length / T;
n = 0:1:N-1;

% consist of the two frequency
x_n = sin(2*pi*f1*n*T) + sin(2*pi*f2*n*T);       % cosist of two frequency
x1 = sin(2*pi*f1*n*T);
x2 = sin(2*pi*f2*n*T);

%plot
figure
stem(n, x_n, 'k', LineWidth=1.2);
title('Practice 1-3 discrete time signal');
xlabel('time n');
ylabel('x[n]');
legend('10Hz + 30Hz')
grid


figure
stem(n, x1,'m', LineWidth=1.2);
hold on
stem(n, x2, 'k', LineWidth=1.2);
xlabel('n');
ylabel('x[n]');
legend('10Hz', '30Hz')
grid