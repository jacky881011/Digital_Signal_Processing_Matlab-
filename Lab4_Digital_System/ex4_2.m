clear;


num = input('Type in the numerator coefficients (e.g., [1 -5 6]) = ');
den = input('Type in the denominator coefficients (e.g., [1 -4.5 2]) =');

roots(num);         %  returns the roots of the polynomial represented by p as a column vector
roots(den);

zplane(num, den);