function swapping(A)
[m,n]=size(A);
x=input('Enter the i row: ');
y=input('Enter the j row: ');

if(x>m)
    disp('Error!!!');
end
if(y>n)
    disp('Error!!!');
end

for i=1:n
    t=A(x,i);
    A(x,i)=A(y,i);
    A(y,i)=t;
end
A
end
