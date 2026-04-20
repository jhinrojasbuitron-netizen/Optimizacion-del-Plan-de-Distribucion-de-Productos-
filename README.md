# Optimización del Plan de Distribución de Productos

Este proyecto aplica modelos avanzados de **Investigación Operativa** y **Programación Lineal** para resolver problemas logísticos complejos, con un enfoque estricto en la eficiencia operativa y la maximización de recursos.

---

## Introducción y Propósito
El estudio desarrolla una solución matemática para una red de suministro, determinando el flujo ideal de mercancías desde los centros de producción hacia los puntos de destino. 

**Objetivos clave:**
* **Minimizar los costos** totales de transporte y distribución.
* **Satisfacer la demanda** de todos los puntos de venta de manera exacta.
* **Optimizar la capacidad** instalada en almacenes y centros de oferta.

---

## Herramientas y Metodología
* **Modelado Matemático:** Formulación de funciones objetivo ($Z$) y definición de restricciones lineales de oferta y demanda.
* **Algoritmos de Resolución:** Implementación del **Método Simplex** y modelos de transporte.
* **Software Analítico:** Resolución de sistemas mediante **LINDO / LINGO** y **Excel Solver**.
* **Análisis de Sensibilidad:** Evaluación del impacto de cambios en costos de combustible o rutas.

---

## Configuración y Ejecución

Para validar y ejecutar los resultados de esta investigación, sigue estos pasos:

### 1. Requisitos Previos
Es necesario contar con uno de los siguientes softwares de optimización:
* **Excel** (con el complemento **Solver** activado).
* **LINDO** o **LINGO** (versión clásica o estudiantil).

### 2. Implementación del Modelo
1. **Definición:** Identifica las variables de decisión $x_{ij}$ representadas en las tablas de costos.
2. **Carga de Datos:** Introduce la función objetivo de minimización y las restricciones de capacidad (oferta) y requerimientos (demanda).
3. **Ejecución:** En Solver, selecciona el método "Simplex LP" y presiona "Resolver" para obtener la solución óptima global.

---

## Evidencias de la Investigación

### Modelado Matemático
> *Diseño de la función objetivo y las restricciones del sistema.*
<p align="center">
  <img src="./Imagenes/ModeloMatematico.PNG" width="800" alt="Formulación del Modelo Matemático">
</p>

### Resultados y Optimización
> *Procesamiento y obtención de la solución óptima mediante software analítico.*
<p align="center">
  <img src="./Imagenes/ResultadosSolver.PNG" width="800" alt="Resultados en Solver o Lindo">
</p>

---

*Facultad de Ingeniería de Sistemas - 2024*
