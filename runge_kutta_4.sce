function [t, y, z] = runge_kutta_4(a, b, h, y0, z0)
    t = a:h:b;
    y(1) = y0;
    z(1) = z0;
    n = length(t);
    for i=2:1:n
        //primero vamos realizar o calculo das inclinações k1z e k1y
        k1y = dy(x(i-1), y(i-1), z(i-1));
        k1z = dz(x(i-1), y(i-1), z(i-1));
        //segundo vamos calcular as inclinações k2z e k2y
        k2y = dy(x(i-1) + h/2, y(i-1) + k1y*h/2, z(i-1) + k1z*h/2);
        k2z = dz(x(i-1) + h/2, y(i-1) + k1y*h/2, z(i-1) + k1z*h/2);
        //terceiro vamos calcular as inclinações k3z e k3y
        k3y = dy(x(i-1) + h/2, y(i-1) + k2y*h/2, z(i-1) + k2z*h/2);
        k3z = dz(x(i-1) + h/2, y(i-1) + k2y*h/2, z(i-1) + k2z*h/2);
        //quarto vamos calcular as inclinações k4ye k4z
        k3y = dy(x(i-1) + h, y(i-1) + k3y*h, z(i-1) + k3z*h);
        k3z = dz(x(i-1) + h, y(i-1) + k3y*h, z(i-1) + k3z*h);
        //agora fazer a média ponderada das inclinações
        //trabalho de coorno da porra!
        ky = 1/6*(k1y + 2*k2y + 2*k3y + k4y);
        kz = 1/6*(k1z + 2*k2z + 2*k3z + k4z);
        //finalmente ...
        y(i) = y(i-1) + ky*h;
        z(i) = z(i-1) + kz*h;
    end
endfunction
