function C = reduced_echelon_form(A)
p = 0;
[m, n] = size(A);
for j = 1 : n
    for i = p + 1 : m
        if (A(i, j) ~= 0)
            p = p + 1;
            for l = 1 : n
                temp = A(i, l);
                A(i, l) = A(p, l);
                A(p, l) = temp;
            end
            factor = A(p, j);
            for y = 1 : n
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
C = A;
