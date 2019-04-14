function F=divided_difference_matrix(X,Y)
n=length(X);
for i=1:n
    F(i,1)=Y(i);
end
for i=2:n
    for j=2:i
        F(i,j)=(F(i,j-1)-F(i-1,j-1))/(X(i)-X(i-j+1));
    end
end
end
