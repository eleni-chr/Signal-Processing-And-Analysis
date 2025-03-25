function [y,Fs_min] = IsNyquistSatisfied(fmax,Fs)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function confirms if a proposed sampling rate, Fs, is high enough to
% avoid aliasing when sampling a signal that is known to contain no 
% frequency greater than fmax. The function takes as input fmax and Fs, and
% it outputs a logical value of true if aliasing will be avoided and false 
% otherwise. A second output, Fs_min, contains the Nyquist sampling rate.

% Inputs:
% -------
% fmax : scalar
%   Maximum frequency in the signal, in Hz.
% Fs : scalar
%   Proposed sampling rate, in Hz.

% Outputs:
% --------
% satisfied : logical
%   True if the proposed sampling rate is high enough to avoid aliasing,
%   False otherwise.
% Fs_min : scalar
%   The minimum required sampling rate to avoid aliasing, in Hz.

Fs_min = 2 * fmax;
y = Fs > Fs_min;
end

