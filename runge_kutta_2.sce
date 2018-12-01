
function [x, y, z] = runge_kutta_2(a, b, h, y0, z0)
    x = a:h:b;
    y(1) = y0;
    z(1)  = z0;
    n = length(x);
    for i=2:1:n
        k1z = dz(x(i-1), y(i-1), z(i-1));
        k1y = dy(x(i-1), y(i-1), z(i-1));
        //calculando as inclinações no inicio do intervalo
        k2z = dz(x(i) + h, y(i-1) + h*k1y, z(i-1) + h*k1z);
        k2y = dy(x(i) + h, y(i-1) + h*k1y, z(i-1) + h*k1z);
        //calculando as inclinações no final do intervalo
        z(i) = z(i-1) + h/2*(k1z+k2z);
        y(i) = y(i-1) + h/2*(k1y+k2y);
    end
endfunction
