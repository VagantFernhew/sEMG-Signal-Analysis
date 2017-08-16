
%========================================================
% this script reads csv data files from 4 different directories. and assign labels to the gestures.change the directories accordingly
% where your data is stored. no.of csv files in each directory must be equal. set the value of num_files variable in the code to the 
% no.of csv files you have in each set(gesture).the data is saved as MATLAB array in the directory 'mydir'. change the colOffset and 
% endCol values (1-8) to read the data of different sensor
%=========================================================

directory = {
	'E:\FYP\EMG RawData\08 Agust(Shera)\fist',
	'E:\FYP\EMG RawData\08 Agust(Shera)\finger sepread',
	'E:\FYP\EMG RawData\08 Agust(Shera)\wave in',
	'E:\FYP\EMG RawData\08 Agust(Shera)\wave out'
};

mydir = 'E:\FYP\EMG RawData\data'; % directory where the final data will be saved
num_files = 140;
rowOffset = 1;
endRow = 600;
% change the value(1-8) of colOffset and endCol to read data of spesific sensor 
colOffset = 8;  
endCol = 8;    
mydata = ones(endRow,num_files); % initialize a matrix fot data storage
direc_len = length(directory);
% initialize a multi directional array 
data = ones(num_files,endRow + 1,direc_len);

%=====================================================
for i = 1:direc_len
	label = ones(num_files,1);

	if i == 1
		cd 'E:\FYP\EMG RawData\08 Agust(Shera)\fist';
	elseif i == 2
		cd 'E:\FYP\EMG RawData\08 Agust(Shera)\finger sepread';
	elseif i == 3
		cd 'E:\FYP\EMG RawData\08 Agust(Shera)\wave in';
	else 
		cd 'E:\FYP\EMG RawData\08 Agust(Shera)\wave out';
	end
	file = dir(cd);
	file = file(3:end);
	label = i.*label;
	
	for j = 1:num_files
        mydata(1:end,j) = csvread(file(j).name,rowOffset,colOffset,[rowOffset,colOffset,endRow,endCol]);
        
     end
     mydata = mydata';
     mydata = [mydata label];
     data(:,:,i) = mydata;
     mydata = ones(endRow,num_files);
end
data = [data(:,:,1);data(:,:,2);data(:,:,3);data(:,:,4)];
save(mydir,'data');   % save the data to specified directory
