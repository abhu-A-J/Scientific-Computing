function I=trapezoidal(f,a,b,n)
h=(b-a)/(n-1);
sum=0;
x=a:h:b;
for i=1:n-1
    sum=sum+f(x(i))+f(x(i+1));
end
I=(h/2)*(sum);
end

