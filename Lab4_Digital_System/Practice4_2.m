close all;
clear;

num0 = [0.5 -1];
den0 = [1 -0.5];

num1 = [0.25 -1];
den1 = [1 -0.25];

num2 = [1 -0.25];
den2 = [1 -0.1];

num3 = [1 -0.9];
den3 = [1 -0.7];


%% set the frequncy of the input
f0=10;f1=30;
T=0.01;
N=100;
n=0:1:N-1;
x2= sin(2*pi*f0*n*T)+ sin(2*pi*f1*n*T);

subplot(4,2,1); stem(n,x2);title('X');

f=n/T/N;
subplot(4,2,2); stem(f,abs(fft(x2)));title('X');

%% filter of the function
y0=filter(num0,den0,x2);
y1=filter(num1,den1,y0);
y2=filter(num2,den2,y1);
y3=filter(num3,den3,y2);
y4=y3*8;


%% Plot the final report from the graph

subplot(4,2,3); stem(n,y4);
subplot(4,2,4); stem(f,abs(fft(y4)));

y5=filter(den2,num2,y3);
y6=filter(den3,num3,y5);
subplot(4,2,5); stem(n,y6);
subplot(4,2,6); stem(f,abs(fft(y6)));

y7=filter(num0,den0,x2);
y8=filter(num1,den1,y7);
subplot(4,2,7); stem(n,y8); title('X_hat');
subplot(4,2,8); stem(f,abs(fft(y8)));title('$$\hat{X}$$','Interpreter','Latex');










