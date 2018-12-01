
function [x,y,z] = euler_sistema(a,b,h,x0,y0,z0)
    x = a:h:b
    n = length(x)
    x(1) = x0;
    y(1) = y0;
    z(1) = z0;
    for i = 2:1:n
        y(i) = y(i-1)+h*dy(x(i-1),y(i-1),z(i-1));
        z(i) = z(i-1)+h*dz(x(i-1),y(i-1),z(i-1));
    end
endfunction
