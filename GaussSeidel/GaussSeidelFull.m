% Definição da matriz A e do vetor b
%A = [3 -1 -1; 1 5 1; 1 1 7];
%b = [-2; 14; 24];

% Exemplo 2
A = [1  5  1; 0 -1 -1; 1  1  7];
b = [14; -2; 24];

% Exemplo 3
%A = [1  1; 1 -3];
%b = [3; -3];

% Exemplo 4
%A = [7 4 3 5 8; 0 4 8 5 2; 6 9 9 4 6; 0 9 9 7 0; 9 9 8 0 3];
%b = [84; 62; 97; 73; 66];

n = size(A, 2); % número de equações
x = zeros(n, 1); % solução inicial (aproximada)

ee = 10^(-8); % precisão ou tolerância para o teste de parada
MAXITER = 1000; % número máximo de iterações
conv = false; % variável que informa se convergiu ou não

% Realizar a iteração de Gauss-Seidel sobre o vetor x
for iter = 1:MAXITER
    for i = 1:n
        S = 0;
        for j = 1:n
            if j ~= i
                S = S + A(i, j)*x(j);
            end
        end
        x(i) = (b(i) - S)/A(i, i);
    end

    % Testa se x é solução aproximada
    if norm(A*x-b, inf) < ee
        conv = true;
        break;
    end
end

% Imprime o resultado
if conv == true
  fprintf('O método convergiu!!\n');
  fprintf('Número de iterações utilizadas: %d\n', iter);
  fprintf('Valor de x: \n');
  disp(x);
else
  fprintf('O método não convergiu!!\n');
end
