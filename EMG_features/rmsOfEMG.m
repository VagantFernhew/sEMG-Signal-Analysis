function rmsVal = rmsOfEMG(mat)
% the function "rmsVal = rmsOfEMG(matrx)" takes a matrix mat as input and compute 
% the rms value of each row(the rows contains raw emg signals) of matrix. output 
% of function is a column vector containing the rms value  of each(signal) 
% row of input matrix
%============= checking the arguments of function================

%=================================================================

N = size(mat,2);
suqared = mat.*mat;
%compute rms value
rmsVal = sqrt(sum(suqared,2)./N);
end