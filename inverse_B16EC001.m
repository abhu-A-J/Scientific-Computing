% ###     ASSIGNMENT NO:1 - MA210 :B16EC001 ##############
% main function to find the inverse
function B=inverse(A)
%Getting the size of input matrix A
[m,n]=size(A);
%Checking for the square matrix condition
if(m~=n)
    disp('ERROR!!! The Matrix must be Square.');
    return
end
%Checking for the invertible condition
if(det(A)==0)
    disp('ERROR!!! The Matrix is not Invertible, as the Determinant is zero');
    return
else
    % Getting the Identity Matrix of same size as the matrix A(square in nature(m==n)) 
    I=eye(m); 
    %Forming the Argumented Matrix of A and I
    arg=[A I];
    %Getting the reduced row echlon form of the argumented matrix(calling the local function)
    red=reduced_echelon_form(arg);
    % Getting the size of the argumented matrix
    [m1,n1]=size(red); 
    %Getting all the row elements and only m+1 to n1 coloumn elements(gives A^-1)
    B=red(:,m+1:n1);
    %displaying Inverted Matrix(B=A^-1)
    B    
   
end

%Definition for the local function
function C=reduced_echelon_form(A)
% A is the input matrix and result is stored in C

% Keeping track of pivot row with p
p = 0;
%Getting the size of inputv matriox A
[m, n] = size(A);
%Loop to get the pivot row(first non zero entry)
for j = 1 : n
    for i = p + 1 : m
        if (A(i, j) ~= 0)
            p = p + 1;
            %After getting the pivot row swap the values with pivot row
            for l = 1 : n
                temp = A(i, l);
                A(i, l) = A(p, l);
                A(p, l) = temp;
            end
            %Get the factor i.e pivot element
            factor = A(p, j);
            for y = 1 : n
            %Make the pivot entry as 1
               A(p, y) = A(p, y)/factor;
            end
            for k = 1 : m
                if (k ~= p)
                    a = - A(k, j);
                    for x = 1 : n
                        A(k, x) = A(k, x) + A(p, x) * a;
                    end
                end
            end
            break
        end
    end
end
%Store the answer in C
C = A;

% ###### END OF THE CODE SNIPPET    ########


