% M�todo das Pot�ncias
% Retorna o autovalor de maior m�dulo da matriz A
% q0 : Vetor inicial
% tol : toler�ncia 
% iter_max : n�mero m�ximo de itera��es
% lambda : autovalor de maior m�dulo
% q1 : autovetor associado a lambda
% iter : n�mero de itera��es executadas
function [lambda,q1,iter] = power_iter( A, q0, tol, iter_max )
    q0 = q0/norm(q0);
    z0 = A*q0;
    q1 = z0/norm(z0);
    iter = 1;
    while ( abs( abs(q0'*q1) - 1 ) > tol && iter < iter_max )
        q0 = q1;
        z0 = A*q0;
        q1 = z0/norm(z0);
        iter = iter + 1;
    end
    lambda = q1'*A*q1;
end