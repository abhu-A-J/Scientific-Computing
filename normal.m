function normal(A)
[m,n]=size(A);
if(m~=n)
    disp('The matrix is not square matrix');
    return 
end

B=zeros(m);

for i=1:m
    for j=1:n
        B(i,j)=conj(A(j,i));
    end
end
C=A*B;
D=B*A;

if(C==D)
    disp('The matrix is normal matrix');
else
    disp('The Matrix is not normal');
    
end
end
        