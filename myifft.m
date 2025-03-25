function y = myifft(yfft, f, Fs)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function takes as input a [Nx1] Fourier transform vector yfft, [Nx1]
% frequency vector f, and sampling frequency Fs. It outputs y, the time 
% domain signal corresponding to the input Fourier transform vector.

if f(end)==Fs/2
    y=ifft([yfft; conj(flipud(yfft(2:end-1)))]);
else
    y=ifft([yfft; conj(flipud(yfft(2:end)))]);
end
end