function var = variance(matrx)
% the function "var = variance(matrx)" takes a matrix as input and compute 
% the variance along each row of column. output of function is a column vector
% containing the variance of each row of input matrix

%============= checking the arguments of function================

%=================================================================

N = size(matrx,2);
suqared = matrx.*matrx;
%compute variance
var = sum(suqared,2)./(N-1);
end