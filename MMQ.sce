function a = polinomio(x, y, k)
    n = length(x);
    for i=1:1:n
        for j=1:1:k+1
            v(i, j) = x(i)^(j-1);
        end
        b(i) = y(i);
    end
    a = inv(v'*v)*(v'*b);
endfunction
