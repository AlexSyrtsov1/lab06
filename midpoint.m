clear
% file 'midpoint.m'
% calculates a midpoint rule approximation of
% the integral from 0 to pi/2 of f(x) = exp(x^2)cos(x)
% -- tditional looped code
% set limits of integration, number of terms and delta x

a = 0
b = pi/2
n = 100
dx = (b-a)/n

% define function to integrate
function y = f(x)
	y = exp(x .^ 2) .* cos(x);
end

msum = 0; % initialize sum
m1 = a + dx/2; % first midpoint

for i = 1:n
	m = m1 + (i-1)*dx; % calculating midpoint
	msum += f(m); % addind to midpoint sum
end

% midpoint approximation to the integral
approx = msum * dx
