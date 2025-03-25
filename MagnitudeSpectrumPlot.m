function MagnitudeSpectrumPlot(crickets, Fs, col)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function plots the magnitude spectrum of a signal with a secret
% message.

% After loading the attached 'crickets.mat' file, you will have a 
% [220500 x 1] sound signal vector 'crickets' with sampling frequency 'Fs'.
% When played using soundsc, it sounds quite a bit like crickets at night. 
% This signal is encoded with a special secret message in its magnitude 
% spectrum. After implementing the MagnitudeSpectrumPlot function, when 
% viewing the MagnitudeSpectrum plot of the Fourier Transform with the 
% third input argument col='*', letters are clearly revealed.

% compute the FFT of y
yfft = myfft(crickets, Fs);

% compute the frequencies corresponding to each FFT entry
f = (0:ceil(length(crickets)/2)-1)' * Fs/length(crickets);

% plot the magnitude spectrum
plot(f, abs(yfft(1:ceil(length(crickets)/2))), col);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
end
