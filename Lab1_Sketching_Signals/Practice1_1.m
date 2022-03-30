
clear;

t = linspace(-3, 3);        % domain of the func
y1 = sinc(t);
y2 = sinc(t).^2;

%% print the sinc(t)
figure
plot(t, y1, 'r', LineWidth=2);
title('signal sinc(t)');
xlabel('sinc(t)');
ylabel('time t (sec)');
grid

%% print the sinc^2(t)
figure
plot(t, y2, 'b',LineWidth=2);
title('signal sinc(t)^2');
xlabel('sinc^2(t)');
ylabel('time t (sec)');
grid

%% Use the original function
dt = 0.001;
N = 3;
length = -N:dt:N;

sinc1 = sin(pi*length)./(pi*length);
sinc2 = (sinc1).^2;                         % sinc(t)^2

figure
h1 = plot(length, sinc1, 'r', LineWidth=1.5);
hold on
h2 = plot(length, sinc2, 'b', LineWidth=1.5);
title('Practice 1-1 print sinc and sinc^2');
xlabel('sinc^2(t)');
ylabel('time t (sec)');
legend('sinc(t)', 'sinc^2(t)');
grid
%%

