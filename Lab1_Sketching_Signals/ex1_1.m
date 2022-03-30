clear;
f0 = 10;            % f0 means hz of sin function
dt = 0.001;         % the delta t we need to show

Length = 0.4;       % the legth we get 0.4/ 0.01 = 40
t = 0:dt:Length;    % means we nleed to show the 40 signal


xa = sin(2*pi*f0*t);    % you need to present the signal to use the parameters


figure
plot(t, xa, 'k',LineWidth=2);
xlabel('time t(sec)');
ylabel('xa(t)');
title('signal xa(t)');
legend('Sine signal');  % show the signal name

grid("on");


