function D=dataa(y)
    d=zeros(8000,50);
    a=1;
    q=8000;
    for k=1:50
        d(:,k)=y(a:q);
        a=a+8000;
        q=q+8000;
    end
    df=dct(d);
    dn=df/norm(df);
    da=abs(dn);
    D=da([1:10],:);
return
