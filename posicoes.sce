// posicao, em pixels, onde se encontra a bola.
// Lembrar da orientação dos eixos

posicao_topo = [681 133] // ápice da posiação y, velocidade igual a zero
posicao_chao = [724 621] // menor posição, altura igual a 0

// momento do topo e da chegada ao chao, em segundos
tempos = [3.614 4.273]

topo_medida = [741 214] // valor da posição máxima da "régua" que foi desenhada no quadro
origem_medida = [735 343] //valor da posição mínima da "régua" que foi desenhada no quadro

// dado que a relação foi desenhada na vertical, a relação pixels/centímetros será somente 
// a diferença das coordenadas y
// relacao = (( origem_medida(2) - topo_medida(2) )*100) / 52
relacao =  248.07692 // px/m


// aceleracao_gravitacional = 9.81*relacao
aceleracao_gravitacional = 2433.6346 // px/s²
