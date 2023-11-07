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