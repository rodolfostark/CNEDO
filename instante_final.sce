function [tf, yf] = instante_final(t, y)
    tf = t(1);
    n = length(t);
    for i=1:1:n
        if floor(y(i)) == 0
            tf = t(i);
            yf = y(i);
        end
    end
endfunction
