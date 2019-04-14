function swapping(A)
[m,n]=size(A);

if (A(1,1)~=0)
    disp('No Swapping is done');
    return 
end


for i=2:m
        if ( A(i,1)~=0 )
          for j=1:n
           t=A(i,j);   
           A(i,j)=A(1,j);
           A(1,j)=t;
          end
          break
        end
end
A
end
