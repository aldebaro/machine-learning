x_train=load('train_set.txt'); %load from file to memory
x_test=load('test_set.txt'); %load from file to memory
[N_train,M]=size(x_train); %N_train is the number of examples and M=3
[N_test,M]=size(x_test); %N_test is the number of test examples
numberOfErrors=0; %count number of errors
for i=1:N_test %go over all test set
    testFeatures = x_test(i,1:2);%extract only features (discard label)
    %find nearest neighbor in training set
    minimumDistance = Inf; %initialize with large number
    nearestNeighborIndex = -1;
    for j=1:N_train %go over all training set
        trainFeatures = x_train(j,1:2);%extract only features (discard label)
        distance = sqrt(sum( (testFeatures-trainFeatures).^2 )); %norm
        if distance < minimumDistance %check if better than current
            nearestNeighborIndex = j; %store the current NN
            minimumDistance = distance; %update minimum distance
        end
    end
    classifierOutput = x_train(nearestNeighborIndex,3); %decision
    if classifierOutput ~= x_test(i,3) %compare with correct label
        numberOfErrors = numberOfErrors + 1; %update number of errors
    end
end
display(['Error rate (%) = ' num2str(100*numberOfErrors/N_test)])
