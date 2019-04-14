function X=newtonsystem(X0,tol,max_cnt)
error=1;
cnt=0;

if(det(J(X0))~=0)
    while(error>tol & cnt<max_cnt)
      cnt=cnt+1;
      X1=X0-(inv(J(X0))*F(X0));
      error=norm(X1-X0);
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


function value=F(X)
value=[X(1)^3+X(2)-1;-X(1)+X(2)^3+1];
end

function value=J(X)
value=[3*X(1)^2 1; -1 3*X(2)^2];
end
end
