function c=divided_diff_newton(x,y,x0)
n=length(x);
f=divided_difference_matrix(x,y);
v=diag(f);

p()=1;
for i=2:n
p(i)=poly(x(i));
end


end

