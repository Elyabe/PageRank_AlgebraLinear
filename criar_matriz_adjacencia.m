% Autor: Elyabe Alves elyabe@outlook.com 20181
% sites_links : links origem -> destino
% qtd_sites : quantidade de p�ginas do conjunto
% W : matriz de adjac�ncia do grafo de conex�o das p�ginas
function W = criar_matriz_adjacencia( sites_links, qtd_sites )
    W = zeros( qtd_sites );
    for lk = 1:size( sites_links, 1 )
        W( sites_links(lk,1), sites_links(lk,2) ) = 1;
    end
    W = W';
end