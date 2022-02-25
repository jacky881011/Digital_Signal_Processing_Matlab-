clear;
length = 0.3;
T = 0.01;
N = length /T;


n = -N:1:N;
wc = 0.2*pi;

%function code
x_n = sin(wc*n)./(pi*n);
x_n(31) = 0.2;                  %the middle of the graph, when n = 0, ~~ 0.2, when the n = 0, 0/0 then derivative the result then find it = 0.2

%plot the figure
stem(n,x_n, LineWidth=1.1);
xlabel('time n'); ylabel('x[n]');
title('discrete signal x[n] = xa(nT). where T = 0.01s');
legend('x[n]');
grid;
