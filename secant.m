function X=secant(f,X0,X1,tol,max_cnt)
error=1;
cnt=0;
a=f(X1)-f(X0);
if(a~=0)
    while(error>tol & cnt<max_cnt)
        a=f(X1)-f(X0);
        X2=X1-(((X1-X0)*f(X1))/a);
        cnt=cnt+1
        error=abs(X2-X1)
        X0=X1;
        X1=X2;
        
    end
   if(cnt>max_cnt)
       disp('Maximum iterations is reached.');
   else
       X=X1;
   end
else
    disp('The derivative is zero at the point');
end
end
