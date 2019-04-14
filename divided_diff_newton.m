function c=divided_diff_newton(x,y,x0)
n=length(x);
f=divided_difference_matrix(x,y);
v=diag(f);
p=zeros(n,1);
p(1)=1;
for i=2:n
  
    p(i)=(x0-x(i-1))*p(i-1)
end
c=v'*p
plot(x,c);

end

