USE escuela;
CREATE VIEW vista_comisiones AS
SELECT 	co.id_comision,
		ce.nombre_cede,
		ce.direccion_cede,
        ce.localidad_cede,
        cu.nombre_curso,
        cu.cantidad_clases,
        pr.nombre_profesor,
        co.fecha_inicio,
        co.fecha_finalizacion
FROM comisiones co
JOIN profesores pr ON co.id_profesor = pr.id_profesor
JOIN cursos cu ON co.id_curso = cu.id_curso
JOIN cedes ce ON co.id_cede = co.id_cede;

SELECT * FROM vista_comisiones;