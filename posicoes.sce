// posicao, em pixels, onde se encontra a bola.
// Lembrar da orientação dos eixos

posicao_topo = [681 133] // ápice da posiação y, velocidade igual a zero
posicao_chao = [724 621] // menor posição, altura igual a 0


topo_medida = [741 214] // valor da posição máxima da "régua" que foi desenhada no quadro
origem_medida = [735 343] //valor da posição mínima da "régua" que foi desenhada no quadro

// dado que a relação foi desenhada na vertical, a relação pixels/centímetros será somente 
// a diferença das coordenadas y
// relacao = ( origem_medida(2) - topo_medida(2) ) / 52
relacao =  2.4807692 // px/cm 
