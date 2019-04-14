function X=newton(f,g,X0,tol,max_cnt)
error=1;
cnt=0;
if(g(X0)~=0)
    while(error>tol & cnt<max_cnt)
        X1=X0-(f(X0)/g(X0));
        cnt=cnt+1
        error=abs(X1-X0)
        X0=X1;
        
    end
   if(cnt>max_cnt)
       disp('Maximum iterations is reached.');
   else
       X=X0;
   end
else
    disp('The derivative is zero at the point');
end
end
