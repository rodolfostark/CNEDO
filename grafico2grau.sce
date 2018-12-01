function y = grafico2grau(x, coef) // recebe o x gerado e o vetor de coeficientes
    for i = 1:1:length(x)
        y(i) = coef(1) + coef(2)*x(i)+coef(3)*x(i)*x(i);
    end
endfunction
