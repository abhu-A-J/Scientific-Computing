function I=runge_kutta(f,a,b,y1,n)
h=(b-a)/n;
x(1)=a;
y(1)=y1;
x=a:h:b;
for i=1:n
    k1=f(x(i),y(i));
    k2=f(x(i)+h/2,y(i)+((h*k1)/2));
    k3=f( x(i)+h/2, y(i)+ ((h*k2)/2));
    k4=f( x(i)+h ,y(i)+ (h*k3));
    
    y(i+1)=y(i)+ (h/6)*( k1+(2*k2)+(2*k3)+k4);
end

for i=1:n+1
    if(x(i)==1.5)
        k=i;
        break
    end
end

value=y(k)
plot(x(k),value,'rd');
hold on
plot(x,y);
end
