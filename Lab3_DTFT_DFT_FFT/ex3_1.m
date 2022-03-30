clear;
N = 500;
u = [1, 1, 1, 1, 1];
y = 0;
k = -N:N;


for i = 0:4
       y = y + u.*exp(-1j*(2*pi/N).*(k'*i));
end

w = (2*pi.*k')/N;




figure 
title('DTFT of x[n]');
subplot(2, 1, 1);
plot(w, abs(y), 'r', LineWidth= 1.2);
xlabel('frequency \omega/\pi');
ylabel('|X(e^j^\omega)|');

subplot(2, 1, 2);
plot(w, angle(y), 'b', LineWidth= 1.2);
xlabel('frequency \omega/\pi');
ylabel('arg(X(e^j^\omega))');


