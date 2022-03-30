clear;
%% 1.2 come from 1.2
Length = 0.1;               
T1 = 0.01;                  % sample rate
N = Length/T1;
n = 0:1:N;
f0 = 10;
x = sin(2*pi*f0*n*T1);


%% DFT algorithm (Need to be different variable from the begin)
dft_n = 0 : length(x) - 1;
dft_N = 100;        % now is 100pt, if we want 10 then dft_N is 10
dft_k = 0 : dft_N - 1;
X = x * exp(-1j*2*pi/dft_N*(dft_n)'*dft_k);

magx = abs(X);
angx = angle(X);

%% stem the signal
figure
subplot(2,1,1);
stem(dft_k, magx, 'm');
xlabel('frequency index k');
ylabel('|X[k]|');

subplot(2,1,2);
stem(dft_k, angx, 'm');
xlabel('frequency index k');
ylabel('arg(X[k])');

%%

%%


