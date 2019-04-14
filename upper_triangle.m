function B=upper_triangle(A,B)
[m,n]=size(A);
if(m~=n)
    disp('The system cannot be solved');
    return
end
if(det(A)==0)
    disp('Cannot be solved');
    return
end
B(n,1)=B(n,1)/A(n,n);
for i= n-1:-1:1
    for j=i+1:n
        B(i,1)=B(i,1)-(A(i,j)*B(j,1));
    end
    B(i,1)=B(i,1)/A(i,i);
end

end
    
