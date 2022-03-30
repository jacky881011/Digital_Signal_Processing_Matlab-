% Procedure of convolution
% 1. Time reverse: h[m] -> h[-m]
% 2. Choose an n value
% 3. Shift h[-m] by n: h[n-m]
% 4. Mutiplication: x[n] * h[n-m]
% 5. Summation over m: y[n] = sigma(x[m]h[n-m])
% Choose another n value, go to Step 3.


% so we find that the h[m] will move by the t,  and multiple with the x[n]


%% Test Ex2_1
clear;
x1 = [6 5 4 3 2 1];          % n from 0 ~ 5
x2 = [1 0 0 0 1];            % n from 0 ~ 4 

% use "conv" to convolution to the signal 
y = conv(x1, x2);                       % convolution to the signal 

n = 1 : length(y);                      % length(y) means length to the signal y

% stem the figure(because of the discrete signal)
figure
stem(n, y, LineWidth= 1.5);
xlabel("time n"); ylabel("y[n]");
title("y[n] = x1[n] * x2[n]");
legend('x1[n] * x2[n]')




