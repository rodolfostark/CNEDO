function [tf, yf] = instante_final(t, y)
    tf = t(1);
    n = length(t);
    for i=1:1:n-1
        if floor(y(i)) >= 0 & floor(y(i)) <= 1
            tf = t(i);
            yf = y(i);
        end
    end
endfunction
