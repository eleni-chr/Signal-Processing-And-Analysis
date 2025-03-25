function [yfft, f] = myfft(y,Fs)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function takes as input a [Nx1] signal vector y and sampling 
% frequency Fs. It outputs yfft, the first portion of the Fourier 
% Transform, as well as the frequency vector f.

%compute the standard fft
n = length(y);
yfft = fft(y);
%trim away the redundant part
yfft = yfft(1:ceil((n+1)/2));
%compute the frequencies to which each fft entry corresponds.
f = (0:ceil((n+1)/2)-1)' * Fs/n;
end


