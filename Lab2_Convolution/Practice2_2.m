clc
clear;


x1 = [1 2 3 4 0];
x2 = [1 2 3 0];
nlen = 10000;
%% generate  z1 and z2 numbers
z1 = [];
for n= 1:(10000/length(x1))
    z1 = [z1 x1];                   % generate the many same array in the array
end

z2 = [];
for n= 1:(10000/length(x2))
    z2 = [z2 x2];
end

%% matrix multiplication approach
m = length(z1);
n = length(z2);
x = [z1, zeros(1, n)];
h = [z2, zeros(1, m)];
for i = 1: m+n-1                        % 2000 - 1 means have 1999 elements
    y(i) = 0;
    for j = 1:m                            % m means is a 
        if(i - j + 1 > 0)
            y(i) = y(i) + x(j)* h(i - j + 1);
        else
        end
    end
end
%% plot the result of the figure
figure
subplot(3, 1, 1);
stem(z1(1:12), 'b', LineWidth=1.2);
xlabel('n');
ylabel('x[n]');
grid on;

subplot(3, 1, 2);
stem(z2(1:12), 'm', LineWidth=1.2);
xlabel('n');
ylabel('h[n]');
grid on;

subplot(3, 1, 3);
stem(y(1:12), 'r', LineWidth=1.2);
xlabel('n');
ylabel('Y[n]');
grid on;

title('Convolution of Two Signals without conv function');





