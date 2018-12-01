function y = grafico1grau(x, coef) // recebe o x gerado e o vetor de coeficientes
    for i = 1:1:length(x)
        y(i) = coef(1) + coef(2)*x(i);
    end
endfunction
