%==========================================================================
% this script extracts features from raw labeld data 
% 
%==========================================================================

%% Initialization
clear ; close all; clc
%=================part 1: loading raw data=================================
% load raw emg data
rawData = 'E:\FYP\EMG RawData\data';
load(rawData)
rawEmg = data(1:end,1:(end - 1));
y = data(1:end,end);
%===================part 2:extracting features=============================

% compute variance of of each example in data set
var = variance(rawEmg);
% compute  RMS value of each example in data set
rmsVal = rmsOfEMG(rawEmg);
% compute inegral of  absolute value of each example in data set
IAV = integAbsVal(rawEmg);
X = [var rmsVal IAV];
% save features and label vector
save('E:\FYP\EMG RawData\features','X','y');


