clear all
% close all
clc
vMax = .02; %to normalize time
L = .8e-3;      %to normalize time
myData = [];
fileName = ' ';
numCompPerRow = 18;%13;
numParticles = 1;
% for i = [60 70 61 62 63 64 71 72 73 74]
for i = [371:372]
%     figure
    fileName = strcat('data/dataRigidCenterVsTimeAndDistance_1_', int2str(i) , '.txt');
   
    delimiterIn = ',';
    headerlinesIn = 1;
    myCellData = importdata(fileName,delimiterIn,headerlinesIn);
    header = char(myCellData.textdata)
    A = myCellData.data;
    
    str1 = strcat('run: ', num2str(i));
    figure
    plot(A(:, 2), A(:, 8),'.');
    title(str1);
    % -- end of title and such
end