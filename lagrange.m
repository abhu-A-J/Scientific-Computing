function l=lagrange(x,y)
n=length(x);
a=0;
for i=1:n
    for j=1:i-1
        t(j)=x(j);
    end
    for j=i+1:n
        t(j-1)=x(j);
    end
    p=poly(t);
    l(i,:)=p/polyval(p,x(i));
end
    for i=1:n
        a=a+l(i,:)*y(i);
    end
    l=a;
