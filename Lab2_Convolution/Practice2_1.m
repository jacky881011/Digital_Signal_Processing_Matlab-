close all;
clear;

%x1 and x2
x1 = [6 5 4 3 2 1];          % n from 0 ~ 5
x2 = [1 0 0 0 1];            % n from 0 ~ 4 

% if x[n] has M non-zero samples, and h[n] has N non-zero samples, then
% y[n] has (M+N-1) samples
m = length(x1);
n = length(x2);
x = [x1, zeros(1, n)];
h = [x2, zeros(1, m)];
for i = 1: m+n-1
    y(i) = 0;
    for j = 1:m
        if(i - j + 1 > 0)
            y(i) = y(i) + x(j)* h(i - j + 1);
        else
        end
    end
end

%plot the result
figure
subplot(3, 1, 1);
stem(x1, 'b', LineWidth=1.2);
xlabel('n');
ylabel('x[n]');
grid on;

subplot(3, 1, 2);
stem(x2, 'm', LineWidth=1.2);
xlabel('n');
ylabel('h[n]');
grid on;

subplot(3, 1, 3);
stem(y, 'r', LineWidth=1.2);
xlabel('n');
ylabel('Y[n]');
grid on;

title('Convolution of Two Signals without conv function');


