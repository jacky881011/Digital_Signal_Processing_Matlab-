clear;
f0 = 10;
dt = 0.001;

Length = 0.4;
t = 0:dt:Length;

xa = sin(2*pi*f0*t);
figure
plot(t, xa, 'b',LineWidth=2);
xlabel('time t(sec)');
ylabel('xa(t)');
title('signal xa(t)');

grid("on");


