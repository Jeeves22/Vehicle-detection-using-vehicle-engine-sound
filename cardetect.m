function [w1,w2,b2,b3]=cardetect(X)
    u=eye(7);
    y = repelem(u,1,10);    
    l2=5; %no. of neuron in layer 2 hidden layer
    n=size(X,2); % no of features of the image=no of pixels of the image.
    nt=7;
    w1=rand(l2,n); % no of input * output neurons
    b2=zeros(l2,1);
    b3=zeros(nt,1); % for output layer
    w2=rand(nt,l2); % no of input * output neurons
    size(w2)
    for p=1:10000000
        q=ceil(rand(1)*70);
        a0=X(q,:);
        Y=y(:,q);
        z1=w1*a0'+b2;
        z1=z1/norm(z1);
        a1=tanh(z1);
        z2=(w2*a1)+b3;
        %z2=z2/norm(z2);
        a2=tanh(z2);
        del2=(a2-Y).*(1-a2.^2);
        del1=(1-(a1).^2).*(sum((w2.*del2)))';
        w1(1,:)=w1(1,:)-0.1*del1(1)*a0;
        w1(2,:)=w1(2,:)-0.1*del1(2)*a0;
        for k=1:7
            w2(k,:)=w2(k,:)-(0.1*del2(k)*a1');
        end
        b2=b2-0.1*del1;
        b3=b3-0.1*del2; %trained one image
    end
return
