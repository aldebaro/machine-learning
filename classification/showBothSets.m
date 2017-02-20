%% Plot train in blue
x_train=load('train_set.txt'); %load from file to memory
indices0=find(x_train(:,3)==0); %find instances with class label == 0
indices1=find(x_train(:,3)==1); %find instances with class label == 1
x0=x_train(indices0,1:2); %label 0: ony two features, without last column
x1=x_train(indices1,1:2); %label 1: ony two features, without last column
clf %clear figure
plot(x0(:,1),x0(:,2),'o','MarkerSize',14) %plot label 0
hold on %superimpose plots
plot(x1(:,1),x1(:,2),'x','MarkerSize',14) %plot label 1

x_test=load('test_set.txt'); %load from file to memory
indices0=find(x_test(:,3)==0); %find instances with class label == 0
indices1=find(x_test(:,3)==1); %find instances with class label == 1
x0=x_test(indices0,1:2); %label 0: ony two features, without last column
x1=x_test(indices1,1:2); %label 1: ony two features, without last column
plot(x0(:,1),x0(:,2),'or','MarkerSize',14) %plot label 0
hold on %superimpose plots
plot(x1(:,1),x1(:,2),'xr','MarkerSize',14) %plot label 1
axis([8 15 0 4]) %resize the x and y axes
xlabel('length'), ylabel('weight')
title(['train is blue and test is red'])