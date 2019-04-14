function [p,v]=monomial(x,y,x0)
n=length(x);
a=zeros(n,n);
for i=1:n
    for j=1:n
        a(i,j)=x(i)^(j-1);
    end
end
r=rref([a y]);
q=r(:,n+1);
p(1)=q(n);
for i=2:n
    p(i)=q(n-i+1);
end
p
v=polyval(p,x0);
u=-5:0.001:5;
w=polyval(p,u);
plot(u,w);
hold on;
plot(x,y,'g*');
end