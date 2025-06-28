% Asesor: Claudio Hiram Carmona
% Alumno: Jonathan Meixueiro
% Matricula: 248694

% Sistema del problema 9.18 (solución [1; 1; 1])
clc; clear; close all;

a = [
    1  2 -1;
    5  2  2;
    -3 5 -1
];
b = [2; 9; 1];
tol = 1e-6;

[x, er] = gauss_pivoteo_9_18(a, b, tol);

if er ~= -1
    disp('Solución:');
    disp(x);  % Debe mostrar [1; 1; 1]
else
    disp('El sistema es singular o mal condicionado.');
end
