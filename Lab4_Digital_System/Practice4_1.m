%%  y[n]=0.8y[n-1]+x[n]-x[n-1]
clear;
a=[1,-0.8];
b=[1,-1];
x=[2 3 4 5];

%% Filtering
y=filter(b,a,x);
disp("y (filter): ");
disp(y);


%% Convolution
x=[2,3,4,5];
r=conv(x, b);
disp("r (convolution): ")
disp(r);

%% DeConvolution
yb = deconv(r, a);
disp("yb (Deconvolution): ")
disp(yb);


%% Testing on the class
len = 50;
x=[2,3,4,5];
u = ones(1, len);
disp(u);

for i = 1:1:len
    yT1(i) = (0.8^i).*u(i);
end

for i = 2:1:len
    yT2(i) = (0.8^(i-1)).*u(i-1);
end

y_new = yT1 - yT2;  

%% Convolution to the function 
y_conv = conv(x, y_new);


figure
stem(1:length(y_conv), y_conv,LineWidth= 1.3);













