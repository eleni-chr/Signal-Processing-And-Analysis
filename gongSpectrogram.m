%% Script written by Eleni Christoforidou in MATLAB R2022b.
%%
% This script uses the spectrogram function to visualise the frequency 
% content as a function of time in the 'gong' sound. Is uses a window size 
% of 256 to obtain analysis windows of length 256/Fs~=30 milliseconds. It 
% outputs s, f, and t, the spectrogram matrix, frequency vector, and time 
% vector from the spectrogram function. It displays the log of the 
% magnitude of the transpose of the spectrogram matrix.

% Listen to the gong sound by loading it into MATLAB Online and running 
% ">>soundsc(y,Fs)." Comparing with the spectrogram, you should see and 
% hear how the gong quickly contains energy across the sound frequency 
% spectrum, and the high frequency energy decays more quickly than the low 
% frequencies as vibrations of the gong diminish in strength.
%%
load gong % loads gong sound y and sampling frequency Fs
% Set the window size
win_size = 256;

% Compute the spectrogram
[s, f, t] = spectrogram(y, win_size, [], [], Fs);

% Display the log of the magnitude of the transpose of the spectrogram matrix
imagesc(t, f, 20*log10(abs(s)'));
colorbar
axis xy
xlabel('Frequency (Hz)')
ylabel('Time (s)')