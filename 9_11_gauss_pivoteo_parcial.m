% Asesor: Claudio Hiram Carmona
% Alumno: Jonathan Meixueiro
% Matricula: 248694

function x = gauss_pivoteo_parcial(A)
    [n, ~] = size(A);
    for k = 1:n-1
        % Pivoteo parcial
        [~, max_row] = max(abs(A(k:n, k)));
        max_row = max_row + k - 1;
        if max_row ~= k
            A([k, max_row], :) = A([max_row, k], :);
        end
        % Eliminación
        for i = k+1:n
            m = A(i, k) / A(k, k);
            A(i, k:end) = A(i, k:end) - m * A(k, k:end);
        end
    end
    % Sustitución hacia atrás
    x = zeros(n, 1);
    for i = n:-1:1
        x(i) = (A(i, end) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
    end
end

% Sistema del problema 9.11
A = [
     2  -6  -1  -38;
    -3  -1   7  -34;
    -8   1  -2  -20
];

x = gauss_pivoteo_parcial(A);
disp('Solución para 9.11:');
disp(x);  % Debe dar [4; 8; -2]
