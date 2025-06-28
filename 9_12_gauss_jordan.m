% Asesor: Claudio Hiram Carmona
% Alumno: Jonathan Meixueiro
% Matricula: 248694

function x = gauss_jordan(A)
    [n, ~] = size(A);
    for k = 1:n
        % Pivoteo parcial (opcional, pero recomendado)
        [~, max_row] = max(abs(A(k:n, k)));
        max_row = max_row + k - 1;
        if max_row ~= k
            A([k, max_row], :) = A([max_row, k], :);
        end
        % Normalizar fila pivote
        A(k, :) = A(k, :) / A(k, k);
        % Eliminación hacia adelante y atrás
        for i = 1:n
            if i ~= k
                m = A(i, k);
                A(i, :) = A(i, :) - m * A(k, :);
            end
        end
    end
    x = A(:, end);
end

% Sistema del problema 9.12
A = [
     2   1  -1   1;
     5   2   2  -4;
     3   1   1   5
];

x = gauss_jordan(A);
disp('Solución para 9.12:');
disp(x);  % Debe dar [14; -32; -5]
