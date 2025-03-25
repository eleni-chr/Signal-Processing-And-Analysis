function y = BandPassFilter(x, Fs, freq_range, W)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function takes as input a [1 x N] vector x (the signal), a scalar Fs
% (the sampling frequency of the signal), a [1 x 2] vector freq_range (the 
% low and high cut-off frequencies for the bandpass of the filter), and an 
% integer W (the window size of the filter). The function creates the 
% filter and applies it to create the output filtered signal y.

% Create bandpass filter
fNorm = freq_range / (Fs/2);
b = fir1(W, fNorm, 'bandpass');
% Apply filter
y = conv(x, b, 'same');
end