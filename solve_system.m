function X=solve_system(A,B)
[m,n]=size(A);

if(m~=n)
    disp('System cannot be solved');
    return
end

if(abs(det(A))<10^-15)
    disp('System cannot be solved');
  return
end

b=[A B];
C=row_ech(b);
R=C(:,1:n);
b1=C(:,n+1);
X=upper_triangle(R,b1);
%disp(X)
end
