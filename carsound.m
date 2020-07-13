function data=carsound(y)
    a=y(:,1);
    af=fft(a);
    z=abs(af);
    figure;
    plot(z)
    an=af/norm(af);
    aa=abs(an);
    figure;
    plot(aa);
    data=zeros(10,10);
    q=1;
    a=10;
    for k=1:10
        data(:,k)=aa(q:a);
        q=q+10;
        a=a+10;
    end
return
