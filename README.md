# 📚 Resolución de Sistemas de Ecuaciones Lineales con Métodos Numéricos

Implementación en GNU Octave de los métodos de Eliminación Gaussiana con Pivoteo Parcial y Eliminación Gauss-Jordan para resolver sistemas de ecuaciones lineales.

## 📂 Archivos

| Problema | Descripción | Problema Relacionado |
|----------|-------------|----------------------|
| **`9_11_gauss_pivoteo_parcial.m`**  | Implementa el método de **Eliminación Gaussiana con pivoteo parcial** para resolver sistemas de ecuaciones lineales. | Problema 9.11: Resuelve el sistema:<br> `2x₁ -6x₂ -x₃ = -38` <br> `-3x₁ -x₂ +7x₃ = -34` <br> `-8x₁ +x₂ -2x₃ = -20` |
| **`9_12_gauss_jordan.m`**  | Implementa el método de **Eliminación Gauss-Jordan** para resolver sistemas de ecuaciones lineales. | Problema 9.12: Resuelve el sistema:<br> `2x₁ +x₂ -x₃ = 1` <br> `5x₁ +2x₂ +2x₃ = -4` <br> `3x₁ +x₂ +x₃ = 5` |
| **`9_18_gauss_pivoteo.m`**  | Implementa el método de **Eliminación Gaussiana con pivoteo parcial** basado en el pseudocódigo de la **figura 9.6** | Problema 9.18: Resuelve el sistema:<br> `x₁ +2x₂ -x₃ = 2` <br> `5x₁ +2x₂ +2x₃ = 9` <br> `-3x₁ +5x₂ -x₃ = 1` |
| **`9_18_test_gauss.m`**  | Script de prueba para el método implementado en **`9_18_gauss_pivoteo.m`**. | Verifica que la solución sea <br> `[1; 1; 1]` |


## ⚙️ Requisitos

- [GNU Octave](https://www.gnu.org/software/octave/) (recomendado: versión 7.3 o superior)

- **Alternativa sin instalación**:  
  Puedes ejecutar este proyecto directamente en línea mediante [Octave Online](https://octave-online.net).  
  Solo necesitas:
1. Crear una cuenta gratuita.
2. Subir los tres archivos `.m` del repositorio (`9_11_gauss_pivoteo_parcial.m`, `9_12_gauss_jordan.m`, `9_18_test_gauss.m`, `9_18_gauss_pivoteo.m`).
3. Ejecutar cada uno por separado desde la consola del sitio (`9_18_test_gauss.m`requiere a `9_18_gauss_pivoteo.m`).

## 🚀 Instrucciones de uso

1. Abre Octave.
2. Coloca los tres archivos `.m` en el mismo directorio.
3. Ejecuta cada archivo por separado:
   - `9_11_gauss_pivoteo_parcial.m`
   - `9_12_gauss_jordan.m`
   - `9_18_test_gauss.m`(requiere `9_18_gauss_pivoteo.m`)

## 📈 Resultados

#### Ejecución de `9_11_gauss_pivoteo_parcial.m`:
![image](https://github.com/user-attachments/assets/cf3a09e4-66d4-47d2-af98-4ef30bece1d0)

---
#### Ejecución de `9_12_gauss_jordan.m`:
![image](https://github.com/user-attachments/assets/d4df94dc-4722-4e39-a7f7-5cc7eea3ed1b)

---

#### Ejecución de `9_18_test_gauss.m`:
![image](https://github.com/user-attachments/assets/3801fe00-a15c-48b2-b2c0-41c3e6c43ec0)

---

## 🧾 Créditos
- **Materia:** Métodos Numéricos
- **Asesor:** Claudio Hiram Carmona Jurado
- **Alumno:** Jonathan Eduardo Olivas Meixueiro
- **Matricula:** 240694
- **Fecha de entrega:** 28/Junio/2025

---
