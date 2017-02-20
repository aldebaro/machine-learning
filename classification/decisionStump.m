x=load('test_set.txt'); %load from file to memory
[N,M]=size(x); %N is the number of examples and M=3
numberOfErrors=0; %count number of errors
for i=1:N %go over all test set
    exampleFeatures = x(i,1:2);%extract only features (discard label)
    %decision stump: if weight > 1 then class label is 0
    thisWeight = exampleFeatures(2); %chose feature
    if thisWeight > 1
        classifierOutput = 0
    else 
        classifierOutput = 1
    end
    if classifierOutput ~= x(i,3)
        numberOfErrors = numberOfErrors + 1; %update number of errors
    end
end
display(['Error rate (%) = ' num2str(100*numberOfErrors/N)])
