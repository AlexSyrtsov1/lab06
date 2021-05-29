clear
% file 'midpoint.m'
% calculates a midpoint rule approximation of
% the integral from 0 to pi/2 of f(x) = exp(x^2)cos(x)
% -- vectorised code
% set limits of integration, number of terms and delta x

a = 0
b = pi/2
n = 100
dx = (b-a)/n

% define function to integrate
function y = f(x)
	y = exp(x .^ 2) .* cos(x);
end

m = [a + dx/2:dx:b-dx/2]; % vec of midpoints
M = f(m); % vec of fn vals at midpoints
approx = dx * sum(M) % approximating sum
