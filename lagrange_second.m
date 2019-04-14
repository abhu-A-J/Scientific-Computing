function v=lagrange_second(x,y,x0)
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
    v=polyval(l,x0)
    e=-10:0.0001:10;
    w=polyval(l,e);
    plot(e,w,'r')
    hold on
    plot(x,y,'g*')
    
