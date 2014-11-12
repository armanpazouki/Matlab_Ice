clear all
close all
clc
fileName = ' ';
for i = [3:3]
    fileName = strcat('data/forceData00', int2str(i) , '.txt');
   
    delimiterIn = ',';
    headerlinesIn = 1;
    myCellData = importdata(fileName,delimiterIn,headerlinesIn);
    header = char(myCellData.textdata)
    A = myCellData.data;
    index = find(A(:, 1) < 3.6);
    str1 = strcat('run: ', num2str(i));
    figure
    plot(A(index, 1), A(index, 5),'.');
    title(str1);
    % -- end of title and such
end