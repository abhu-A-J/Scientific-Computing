function I=simpson(f,a,b,n)

if(mod(n,2)==0)
    disp('Cannot be evaluated on even points');
    return 
end
h=(b-a)/(n-1);
x=a:h:b;
sum1=0;
sum2=0;
for i=3:2:n-2
    sum1=sum1+ f(x(i));
end
for i=2:2:n-1
    sum2=sum2+f(x(i));
end
I=(h/3)*( f(a)+f(b)+ ( 4*(sum2)+ 2*(sum1)) );
