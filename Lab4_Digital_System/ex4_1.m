clear;
%% Backward difference system y[n] = x[n] - x[n-1]
a = [1];
b = [1 -1];
x = [2 3 4 5];

y = filter(b, a, x);

h = [1 -1];
x = [2 3 4 5];
w = conv(h, x);

h1 = [1 -1 0 0 0];
x1 = [2 3 4 5 0];

H = fft(h1);
X = fft(x1);

z = H.*X;
W = fft(w);

disp("Filter: ")
disp(y);
disp("Convolution: ")
disp(w);
disp("Response: ")
disp(W);



