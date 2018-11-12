
function [x, y, z] = edo_euler_2(a, b, h, y0, z0)
    x = a : h : b;
    n = length(x);
    y(1) = y0;
    z(1) = z0;
   for i = 2 : 1 : n
       y(i) = y(i-1) + h*df(x(i-1), y(i-1), z(i -1));
       z(i) = z(i-1) + h*df2(x(i-1), y(i-1), z(i -1));
   end
endfunction
