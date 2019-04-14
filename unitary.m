function unitary(A)
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
I=eye(m);
if(C==D & C==I)
    disp('The matrix is unitary matrix');
else
    disp('The Matrix is not unitary martix');
    
end
end
        