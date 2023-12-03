/*

Los cuatro triggers fueron diseñados para mantener un historial de cambios en las tablas alumnos y comisiones.
Para la tabla alumnos, se crearon dos triggers: uno que registra los cambios después de actualizar un registro y otro
después de eliminarlo. De manera similar, para la tabla comisiones, se implementaron triggers de registro después de una
actualización yuna eliminación.
Además, es importante destacar que las tablas de historiales, las cuales registran los cambios realizados en las tablas 
de alumnos y comisiones, fueron creadas de manera integral en el script de SQL denominado creacion_tablas. Este script
incluyó la definición de todas las tablas del proyecto.
Es conveniente eliminar la base de datos anterior, Para probar los triggers, puedes utilizar el archivo prueba_triggers proporcionado.
*/
USE escuela;
DELIMITER //
CREATE TRIGGER alumnos_eliminados
AFTER DELETE ON alumnos
FOR EACH ROW
BEGIN
    INSERT INTO historial_modificaciones_alumnos (
        id_alumno,
        dni_anterior,
        nombre_anterior,
        apellido_anterior,
        edad_anterior,
        accion,
        fecha_hora,
        usuario
    )
    VALUES (
        OLD.id_alumno,
        OLD.dni,
        OLD.nombre,
        OLD.apellido,
        OLD.edad,
        'borrado',
        NOW(),
        CURRENT_USER()  -- Esta función obtiene el usuario actual
    );
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER alumnos_modificados
AFTER UPDATE ON alumnos
FOR EACH ROW
BEGIN
    INSERT INTO historial_modificaciones_alumnos (
        id_alumno,
        dni_anterior,
        nombre_anterior,
        apellido_anterior,
        edad_anterior,
        accion,
        fecha_hora,
        usuario
    )
    VALUES (
        OLD.id_alumno,
        OLD.dni,
        OLD.nombre,
        OLD.apellido,
        OLD.edad,
        'actualizado',
        NOW(),
        CURRENT_USER()
    );
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER comisiones_modificadas
AFTER UPDATE ON comisiones
FOR EACH ROW
BEGIN
    INSERT INTO historial_modificaciones_comisiones (
        id_comision,
        id_curso,
        id_cede,
        id_profesor,
        fecha_inicio_anterior,
        fecha_finalizacion_anterior,
        accion,
        fecha_hora,
        usuario
    )
    VALUES (
        NEW.id_comision,
        NEW.id_curso,
        NEW.id_cede,
        NEW.id_profesor,
        OLD.fecha_inicio,
        OLD.fecha_finalizacion,
        'actualizado',
        NOW(),
        CURRENT_USER()
    );
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER comisiones_eliminadas
AFTER DELETE ON comisiones
FOR EACH ROW
BEGIN
    INSERT INTO historial_modificaciones_comisiones (
        id_comision,
        id_curso,
        id_cede,
        id_profesor,
        fecha_inicio_anterior,
        fecha_finalizacion_anterior,
        accion,
        fecha_hora,
        usuario
    )
    VALUES (
        OLD.id_comision,
        OLD.id_curso,
        OLD.id_cede,
        OLD.id_profesor,
        OLD.fecha_inicio,
        OLD.fecha_finalizacion,
        'borrado',
        NOW(),
        CURRENT_USER()
    );
END;
//
DELIMITER ;

/* Pruebas Triggers */
UPDATE alumnos 
	SET 
		dni = '111111111',
		nombre = 'Carlos',
		apellido = 'Lopez',
		edad = 26
	WHERE id_alumno = 1;

INSERT INTO alumnos (dni, nombre, apellido, edad)
	VALUES ('123456789', 'Juan', 'Perez', 25);
    
DELETE FROM alumnos 
	WHERE id_alumno = 371;

SELECT * FROM historial_modificaciones_alumnos;

INSERT INTO comisiones (id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion)
VALUES (1, 2, 3, '2023-11-10', '2023-12-10');

UPDATE comisiones
SET
    id_curso = 4,
    id_cede = 2,
    id_profesor = 6,
    fecha_inicio = '2023-11-15',
    fecha_finalizacion = '2023-12-15'
WHERE id_comision = 2;

DELETE FROM comisiones
WHERE id_comision = 16;

SELECT * FROM historial_modificaciones_comisiones;
