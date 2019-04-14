function I=euler(f,a,b,y1,n)
h=(b-a)/n;
x(1)=a;
y(1)=y1;
for i=1:n-1
    x(i+1)=a+(h*i);
    y(i+1)=y(i)+(h*f(x(i),y(i)));
end

plot(x,y);
end