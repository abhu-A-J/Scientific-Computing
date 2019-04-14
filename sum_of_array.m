
function c=matrixsum(A,B);
[m,n]=size(A);
[p,q]=size(B);
if(m~=p || m~=q)
    disp('Error');
    return
end
c=zeros(m,n);
for i=1:m
    for j=1:n
      
        c(i,j)=A(i,j)+B(i,j);
    end
end
end