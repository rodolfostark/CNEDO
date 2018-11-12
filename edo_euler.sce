//precisamos das condições iniciais 
//y(0) = 
//dy(0)/dx = 
function [x, y] = edo_euler(a, b, h, y0)
    x = a : h : b;
    n = length(x);
    y(1) = y0;
   for i = 2 : 1 : n
       y(i) = y(i-1) + h*df(x(i-1), y(i-1));  
   end
endfunction
