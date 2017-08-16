function IAV = integAbsVal(sig)
 %==============================================================
 % integAbsVal(sig) returns the 'integral of abslute value' of signals
 % which are rows of matrix 'sig'. the output IAV is a column vector
 
 %============= checking the arguments of function================

 %===============================================================
 % N is total number of samples in signal
 N = size(sig,2);
 % compute sum of each signal(each signal is along the row of "sig" matrix)
 % "sum" is a column vector containing the sum of all exmples
 sum_sig = sum(sig,2);
 %compute integral of abslute value
 IAV = sum_sig./N;
end