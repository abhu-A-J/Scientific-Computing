function X=gauss_seidel (A,B,X0,tol,max_cnt)
error=1;
cnt=0;
[m,n]=size(A);
if(m~=n)
    disp('The matrix is not a square matrix')
    return 
end

D=diag(diag(A));
L=tril(A);
R=A-L;
if(det(D)==0)
    disp('Jacobi matrix fails for zero diagonal elements')
    return 
end
if(max_cnt<=0)
    disp( 'The count is not valid')
    return 
end

while(error>tol & cnt<max_cnt)
    cnt=cnt+1;
    X1= inv(L) *(B- (R*X0));
    error=norm(X0-X1);
    iteration=[error,cnt, X1']
    X0=X1;
end
if( cnt>max_cnt)
    disp('Jacobi may or may not converge')

else
    X=X0;
end
X
end