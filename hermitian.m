function hermitian(A)
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

if(A==B)
    disp('The matrix is a hermitian matrix');

 else
     disp('The matrix is not a  hermitian matrix');
 end
end

        