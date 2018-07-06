% autor : Elyabe Alves - elyabe@outlook.com 20181
% num_lin: dimens�es da matriz
% retorna um vetor n�o nulo com p�gina inicial aleat�ria

function Y_0 = gerar_vetor_inicial( num_lin )
    vet_nulo = zeros( num_lin, 1 );
    Y_0 = vet_nulo;
    while Y_0 == vet_nulo
        Y_0 = 1 + ( num_lin - 1)*rand( num_lin, 1 ); 
        Y_0 = floor( 1/max(Y_0)*Y_0 );
    end
end