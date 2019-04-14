function A=row_ech(A)
[m,n]=size(A);
 p=0;
 for j=1:n
    for i=p+1:m
     if ( A(i,j)~=0)
         p=p+1;
         for s=1:n
             temp=A(i,s);
             A(i,s)=A(p,s);
             A(p,s)=temp;
         end
         
         for k=p+1:m
             a=A(k,j)/A(p,j);
             for r=1:n
                 A(k,r)=A(k,r)-a*A(p,r);
             end
         end
         break
     end
    end
 end

end
             
             
         