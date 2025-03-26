# Signal-Processing-And-Analysis

Functions/scripts written by Eleni Christoforidou in MATLAB R2022b.

## Signal frequency analysis

**myfft:** This function takes as input a [Nx1] signal vector y and sampling frequency Fs. It outputs yfft, the first portion of the Fourier Transform, as well as the frequency vector f.

**myifft:** This function takes as input a [Nx1] Fourier transform vector yfft, [Nx1] frequency vector f, and sampling frequency Fs. It outputs y, the time domain signal corresponding to the input Fourier transform vector.

**gongSpectrogram:** This script uses the spectrogram function to visualise the frequency content as a function of time in the 'gong' sound. Is uses a window size of 256 to obtain analysis windows of length 256/Fs~=30 milliseconds. It outputs s, f, and t, the spectrogram matrix, frequency vector, and time vector from the spectrogram function. It displays the log of the magnitude of the transpose of the spectrogram matrix.

**MagnitudeSpectrumPlot:** This function plots the magnitude spectrum of a signal with a secret message.

**SignalResample:** This function takes as input a [1 x N] signal x and sampling frequency xFs, as well as a resampling frequency yFs. The function uses linear interpolation to create and output signal y, a resampled version of x with sampling rate yFs.

**IsNyquistSatisfied:** This function confirms if a proposed sampling rate, Fs, is high enough to avoid aliasing when sampling a signal that is known to contain no frequency greater than fmax. The function takes as input fmax and Fs, and it outputs a logical value of true if aliasing will be avoided and false otherwise. A second output, Fs_min, contains the Nyquist sampling rate.

## Convolution Filtering
Convolution filtering functions using a Gaussian filter or a bandpass filter.

**GaussianFilter:** This function takes as input a [1xN] vector x, which represents a signal, and a scalar sigma. It convolves x with a Gaussian with standard deviation sigma. The function outputs the resulting signal y.

**BandPassFilter:** This function takes as input a [1 x N] vector x (the signal), a scalar Fs (the sampling frequency of the signal), a [1 x 2] vector freq_range (the low and high cut-off frequencies for the bandpass of the filter), and an integer W (the window size of the filter). The function creates the filter and applies it to create the output filtered signal y.

## Audio signal processing

**mixit:** Obtain a single-track audio recording by mixing the individual tracks of a multi-track audio recording according to the static weights.

Consider a multi-track audio recording: a uint16 matrix of N columns where each column represents one track, e.g., the recording of one instrument of a band playing a song. The input range is between 0 and 65535, a value that a 16-bit analog digital converter would provide. This function takes the tracks and generates a weighted sum of them. The first input argument is a K-by-N matrix of uint16 values where N is the number of tracks and K is the number of samples per track. The second input argument is a vector of N double scalars representing the weights of the tracks. The output of the function is a K-element column vector of doubles representing a single-track audio recording obtained by mixing the individual tracks according to the static weights. Note that before any of the processing takes place, the audio data is be converted to standard interval of [-1 1]. That is, uint16 0 is mapped to -1, while 65535 becomes +1. The output is in the same range. If any element of the final mixed audio is outside of this range, the output is scaled.
