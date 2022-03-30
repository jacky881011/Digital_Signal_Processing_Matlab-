clear;
f0 =10;
length = 0.4;
t = 0.01;           % sampling 
N = length / t;     % means the total n times discrete 
n = 0:1:N-1;        % Step of the times

x = sin(2*pi*f0*n*t);           % there are different between the function, n means the discrete times we need to show

%plot the discrete function
figure
stem(n, x, 'b', LineWidth=1.2);         % we need to plot the discrete so use the stem() function to show
xlabel('time n');
ylabel('x[n]');
title('discrete signal x[n]= xa[nT], where T = 0.01 sec');
grid
