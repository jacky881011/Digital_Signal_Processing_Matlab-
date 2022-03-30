clear;

x= [1, 1, 1, 1, 1];
n = length(x) - 1;
N = 500;
k = -N : N;
y= 0;

wn = (2*pi/N);


for i = 0:n
    y = y + x.*cos(wn.*(k'*i)) - 1j * x.*sin(wn.*(k'*i));
end

% set the x 
w = (2*pi.*k')/N;       

ab = sqrt(real(y).^2 + imag(y).^2);         % find the abs
an = atan2(imag(y), real(y));


figure 
title('DTFT of x[n]');
subplot(2, 1, 1);
plot(w, ab , 'm', LineWidth= 1.2);
xlabel('frequency \omega/\pi');
ylabel('|X(e^j^\omega)|');

subplot(2, 1, 2);
plot(w, an, 'm', LineWidth= 1.2);
xlabel('frequency \omega/\pi');
ylabel('arg(X(e^j^\omega))');