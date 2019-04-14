
function c=matrixmul(A,B)
[m,n]=size(A);
[r,s]=size(B);
if(n~=r)
    disp('Error,It cannot be multiplied');
    return
end
c=zeros(m,s);

for i=1:m
    for j=1:s
        for k=1:n
           c(i,j)=c(i,j)+ (A(i,k)* B(k,j));
    end
end
end
end