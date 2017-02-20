x=load('train_set.txt'); %load from file to memory
%x=load('test_set.txt'); %load from file to memory
indices0=find(x(:,3)==0); %find instances with class label == 0
indices1=find(x(:,3)==1); %find instances with class label == 1
x0=x(indices0,1:2); %label 0: ony two features, without last column
x1=x(indices1,1:2); %label 1: ony two features, without last column
clf %clear figure
plot(x0(:,1),x0(:,2),'o','MarkerSize',14) %plot label 0
hold on %superimpose plots
plot(x1(:,1),x1(:,2),'x','MarkerSize',14) %plot label 1
axis([8 15 0 4]) %resize the x and y axes
xlabel('length'), ylabel('weight')