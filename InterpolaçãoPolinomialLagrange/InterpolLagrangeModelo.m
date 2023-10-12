%%  Este programa calcula o polinomio interpolador na FORMA DE LAGRANGE
%%  Interpola conjunto de pontos (xk,yk), para k = 0,...,n
%%  pn(x) = Sum(k=0,n) yk Lk(x)
%%          (x -x0)(x -x1)...(x -x(k-1))(x -x(k+1))...(x -xn)
%%  Lk(x) = -------------------------------------------------,  k=0,...,n.
%%          (xk-x0)(xk-x1)...(xk-x(k-1))(xk-x(k+1))...(xk-xn)

function InterpolLagrangeModelo
 clc
 format long

 % Exemplo1
 x = [1 2 3];
 y = f(x);

 % Exemplo2
 % x = [-1 0 1 2];
 % x = [-1 0 1 2 10];
 % y = f(x);

 n = length(x)-1;      % n eh o grau do polinomio interpolador

 % Calculo dos "coeficientes" ck = yk/denominador da forma de Lagrange
 % Para k variando de 1 até n+1 (pois o Matlab nao tem indice "0")
 %  Calcular o denominador "m" de cada parcela Lk da forma de Lagrange
 %  Calcular c(k) como y(k)/m

 % Impressao dos coeficientes
 disp('Coeficientes do polinomio de Lagrange:');
 for k=1:(n+1)
  fprintf('c%1d: %1.2f\n', k, c(k));
 end
 disp('');

end

function y = f(t)
  y = 6./t;             % x=1:3
end
