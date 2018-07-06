% Universidade Federal do Esp�rito Santos - Ceunes
% Algoritmos Num�ricos II - Trabalho final
% Autores : Elyabe Alves, Gabriel Moura
% W: Grafo que representa os sites
% A: Matriz de links 
% S: Matriz de todos as probabilidades iguais
% m in [0,1]
% G : Matriz Google
% tol_erro: Toler�ncia para m�todo das pot�ncias
clear
clc
tol_erro = 1e-6;
m = 0.15;
iter_max = 100;
qtd_sites = 6;
sites_links = [ 1 2; 3 1; 1 3; 3 2; 3 4; 4 5; 4 6; 5 6; 6 4; 6 5];
% sites_links = [ 1 3; 1 4; 2 1; 2 3; 2 4; 3 1; 4 2 ];

 W = criar_matriz_adjacencia( sites_links, qtd_sites )
 A = criar_matriz_estocastica( W ) 
 A = tratar_no_pendente( A )
 
% Gera vetor para p�gina aleat�ria
Y_0 = gerar_vetor_inicial( qtd_sites )

% Irredutibilidade do grafo
S = ones( qtd_sites )/qtd_sites
G = (1-m)*A + m*S
[ autovalor, autovetor, num_iter] = metodo_potencia( G, Y_0, tol_erro, iter_max )
[ ~, ranking ] = sort( autovetor, 'descend' )
