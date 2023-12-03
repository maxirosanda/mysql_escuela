USE escuela;
DELIMITER //

CREATE FUNCTION calcular_promedio_alumno(id_alumno INT) 
    RETURNS DECIMAL(5,2)
    DETERMINISTIC
    BEGIN
        DECLARE promedio DECIMAL(5,2);

        SELECT AVG(nota) INTO promedio
        FROM inscripciones
        WHERE id_alumno = id_alumno;

        IF promedio IS NULL THEN
            RETURN 'No hay notas para promediar';
        END IF;

        RETURN promedio;
    END//
DELIMITER ;

SELECT calcular_promedio_alumno(1);

DELIMITER //
CREATE FUNCTION obtener_fecha_finalizacion_curso(id_alumno INT, id_comision INT) 
	RETURNS DATE
	DETERMINISTIC
	BEGIN
		DECLARE fecha_finalizacion DATE;
		
		SELECT c.fecha_finalizacion INTO fecha_finalizacion
		FROM inscripciones i
		JOIN comisiones c ON i.id_comision = c.id_comision
		WHERE i.id_alumno = id_alumno AND i.id_comision = id_comision;
		
		RETURN fecha_finalizacion;
	END//

DELIMITER ;
SELECT obtener_fecha_finalizacion_curso(1,1);