function y = GaussianFilter(x, sigma)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function takes as input a [1xN] vector x, which represents a signal,
% and a scalar sigma. It convolves x with a Gaussian with standard 
% deviation sigma. The function outputs the resulting signal y.

% Compute the size of the filter
W = ceil(6*sigma);
% Create the Gaussian filter using fspecial
g = fspecial('gaussian', [1,W], sigma);
% Convolve the signal with the filter using the 'same' option
y = conv(x, g, 'same');
end
