function inst = instante_final(t, y)
    inst = t(1);
    n = length(t);
    for i=1:1:n
        if floor(y(i)) == 0
            inst = t(i);
        end
    end
endfunction
