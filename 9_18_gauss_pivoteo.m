% Asesor: Claudio Hiram Carmona
% Alumno: Jonathan Meixueiro
% Matricula: 248694

function [x, er] = gauss_pivoteo_9_18(a, b, tol)
    % Función principal (SUB Gauss)
    n = length(b);
    er = 0;
    s = max(abs(a), [], 2);  % Vector de escalamiento (s_i = max |a_i,j|)

    % Eliminación con pivoteo
    [a, b, er] = eliminate(a, b, s, n, tol, er);

    if er ~= -1
        x = substitute(a, b, n);
    else
        x = NaN(n, 1);
        disp('Error: Sistema singular o pivote cercano a cero');
    end
end

function [a, b, er] = eliminate(a, b, s, n, tol, er)
    % Subrutina Eliminate
    for k = 1:n-1
        [a, b, s] = pivot(a, b, s, n, k);
        if abs(a(k, k)/s(k)) < tol
            er = -1;
            return;
        end
        for i = k+1:n
            factor = a(i, k) / a(k, k);
            a(i, k:n) = a(i, k:n) - factor * a(k, k:n);
            b(i) = b(i) - factor * b(k);
        end
    end
    if abs(a(n, n)/s(n)) < tol
        er = -1;
    end
end

function [a, b, s] = pivot(a, b, s, n, k)
    % Subrutina Pivot
    p = k;
    big = abs(a(k, k)/s(k));
    for ii = k+1:n
        dummy = abs(a(ii, k)/s(ii));
        if dummy > big
            big = dummy;
            p = ii;
        end
    end
    if p ~= k
        % Intercambiar filas
        a([k, p], :) = a([p, k], :);
        b([k, p]) = b([p, k]);
        s([k, p]) = s([p, k]);
    end
end

function x = substitute(a, b, n)
    % Subrutina Substitute
    x = zeros(n, 1);
    x(n) = b(n) / a(n, n);
    for i = n-1:-1:1
        x(i) = (b(i) - a(i, i+1:n) * x(i+1:n)) / a(i, i);
    end
end
