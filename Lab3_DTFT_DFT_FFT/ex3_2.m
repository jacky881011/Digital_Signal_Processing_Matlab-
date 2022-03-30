clear;
f = linspace(-0.5, 0.5, 200);
wc = 0.25 * pi;

for m = 1:5:2000
    n = (-m:m);
    for j = 1:length(f)
        x(j) = sum(wc/pi * sinc(wc*n) .* exp(-i * 2 *pi * n * abs(f(j))));
    end
    plot(f, abs(x));
    xlabel('\omega/\pi');
    ylabel('|X(e^j^\omega)|');
    title(m);
    pause;
end

