clear;
disp("Practice 3-3");
f = linspace(-0.5, 0.5, 200);
wc = 0.25 * pi;

for m = 1:5:50
      n = (-m:m);
      for j = 1:length(f)
          x(j) = sum(wc/pi*sinc(wc*n).*exp(-i*2*pi*n*abs(f(j))));
      end
      fft_x =fft(x);
      abs_fftx = abs(fft_x);
      
      subplot(2, 1, 1);
      plot(f, abs(x),'b');
      xlabel('\omega/\pi');
      ylabel('|X[f]|');
      
      subplot(2, 1, 2);
      plot(f, abs_fftx, 'm');
      xlabel('\omega/\pi');
      ylabel('|X[f]|');
      pause;
end

