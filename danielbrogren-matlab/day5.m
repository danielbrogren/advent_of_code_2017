clear all
close all

fileID = fopen('inputDay5.txt','r');
formatSpec = '%d';
A = fscanf(fileID,formatSpec);
fclose(fileID);

figure;
plot(A)
[length junk] = size(A);
ii = 1;
lastStep = 0;
nrOfSteps = 0;

while (ii <= length)
    
    lastStep = ii;
    ii = A(ii) + ii;
    if A(lastStep) > 2 % Used for problem 2
        A(lastStep) = A(lastStep) - 1;
    else
        A(lastStep) = A(lastStep) + 1;
    end
    nrOfSteps = nrOfSteps + 1;
    iii(nrOfSteps) = ii;
    jjj(nrOfSteps) = A(lastStep);
end

ii

figure;
plot(iii)
figure;
plot(jjj)

