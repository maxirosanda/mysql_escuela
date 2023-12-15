/*

El procedimiento almacenado "ObtenerCantidadComisionesPorCursoEnMes" proporciona información detallada
sobre la cantidad de comisiones inicializadas durante un mes y año específicos, desglosadas por curso.
Este procedimiento realiza una consulta en la base de datos, seleccionando el identificador único de
cada comisión (id_comision), el identificador del curso (id_curso), el nombre del curso
(nombre_curso), y la cantidad total de comisiones correspondientes a cada curso en el mes y año
proporcionados. El resultado es una presentación estructurada que facilita la comprensión de cómo se
distribuyen las comisiones a lo largo de los cursos durante el período especificado.
*/

USE escuela;
DELIMITER //

CREATE PROCEDURE ObtenerCantidadComisionesPorCursoEnMes(
    IN mes_param INT,
    IN anio_param INT
)
BEGIN
    SELECT
        c.id_comision,
        c.id_curso,
        cu.nombre AS nombre_curso,
        COUNT(*) AS cantidad_comisiones
    FROM
        comisiones c
    JOIN
        cursos cu ON c.id_curso = cu.id_curso
    WHERE
        MONTH(c.fecha_inicio) = mes_param
        AND YEAR(c.fecha_inicio) = anio_param
    GROUP BY
        c.id_comision, c.id_curso;
END //

DELIMITER ;
CALL ObtenerCantidadComisionesPorCursoEnMes(12, 2023);


DELIMITER //
/*
El procedimiento almacenado "ObtenerCantidadComisionesFinalizadasEnMes" ofrece una visión detallada
 de las comisiones académicas que concluyeron durante un mes y año específicos. Al realizar una 
 consulta en la base de datos, este procedimiento selecciona información clave, incluyendo el 
 identificador único de cada comisión (id_comision), el identificador del curso (id_curso), y el
 nombre del curso (nombre_curso). La condición de la consulta establece que la fecha de finalización
 de la comisión coincida con el mes y año proporcionados. El resultado es una presentación estructurada
 de las comisiones que concluyeron en el período señalado, facilitando el análisis de eventos académicos
 finalizados en un contexto de gestión educativa
 */

CREATE PROCEDURE ObtenerCantidadComisionesFinalizadasEnMes(
    IN mes_param INT,
    IN anio_param INT
)
BEGIN
    SELECT
        c.id_comision,
        c.id_curso,
        cu.nombre AS nombre_curso
    FROM
        comisiones c
    JOIN
        cursos cu ON c.id_curso = cu.id_curso
    WHERE
        MONTH(c.fecha_finalizacion) = mes_param
        AND YEAR(c.fecha_finalizacion) = anio_param;
END //

DELIMITER ;
CALL ObtenerCantidadComisionesFinalizadasEnMes(12, 2023);

DELIMITER //
/*
El procedimiento almacenado "ObtenerCantidadInscriptosComisionesNoIniciadas" ofrece un análisis detallado 
de la cantidad de inscritos en comisiones académicas que aún no han iniciado. Este procedimiento realiza 
una consulta en la base de datos, seleccionando información clave como el identificador único de curso 
(id_curso), el identificador único de comisión (id_comision), el nombre del curso (nombre_curso), la 
fecha de inicio de la comisión (fecha_inicio), y la cantidad de inscritos en cada comisión que cumple
 con la condición de no haber iniciado aún
 */
CREATE PROCEDURE ObtenerCantidadInscriptosComisionesNoIniciadas()
BEGIN
    SELECT
        c.id_curso,
        ic.id_comision,
        cu.nombre AS nombre_curso,
        c.fecha_inicio,
        COUNT(*) AS cantidad_inscriptos
    FROM
        comisiones c
    JOIN
        inscripciones ic ON c.id_comision = ic.id_comision
    JOIN
        cursos cu ON c.id_curso = cu.id_curso
    WHERE
        c.fecha_inicio > CURDATE()  -- Solo comisiones que aún no han iniciado
    GROUP BY
        c.id_curso, ic.id_comision, cu.nombre, c.fecha_inicio;
END //

DELIMITER ;
CALL ObtenerCantidadInscriptosComisionesNoIniciadas();


