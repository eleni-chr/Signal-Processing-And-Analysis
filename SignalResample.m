function y = SignalResample(x, xFs, yFs)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function takes as input a [1 x N] signal x and sampling 
% frequency xFs, as well as a resampling frequency yFs. The function uses
% linear interpolation to create and output signal y, a 
% resampled version of x with sampling rate yFs.

% Find the total time duration 'T'
T=(length(x)-1)/xFs;
% Using 'T', define a time vector 'tx'
tx=(0:1/xFs:T);
% Using 'T', define the new time vector, 'ty' for our resampled time. 
ty=(0:1/yFs:T);
% Use interp1 to create y by resampling x
y=interp1(tx,x,ty,'linear');
end