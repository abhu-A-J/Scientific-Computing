function I=euler_improved(f,a,b,y1,n)
h=(b-a)/n;
x(1)=a;
y(1)=y1;
for i=1:n-1
    x(i+1)=a+(h*i);
    y(i+1)=y(i)+((h/2)*(f(x(i),y(i))+f(x(i+1),y(i)+h+(f(x(i),y(i))))));
end
A=[x' y'];
for i=1:n+1
    if(A(i,1)==0.5)
        k=i;
    break
    end
end
A(k,2)

plot(x,y);
end