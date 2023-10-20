USE escuela;
CREATE OR REPLACE VIEW vista_comisiones AS
SELECT 	co.id_comision,
		ce.nombre AS 'Cede',
		ce.direccion,
        ce.localidad,
        cu.nombre AS 'Curso' ,
        cu.cantidad_clases,
        di.dificultad,
        ca.categoria,
        pr.nombre AS 'Profesor',
        co.fecha_inicio,
        co.fecha_finalizacion
FROM comisiones co
JOIN profesores pr ON co.id_profesor = pr.id_profesor
JOIN cursos cu ON co.id_curso = cu.id_curso
JOIN cedes ce ON co.id_cede = co.id_cede
JOIN dificultad di ON cu.id_dificultad = di.id_dificultad
JOIN categorias ca ON cu.id_categoria = ca.id_categoria;

SELECT * FROM vista_comisiones;

CREATE OR REPLACE VIEW vista_profesores AS
SELECT 	pr.nombre,
		pr.apellido,
		pr.edad,
        pr.dni,
        (SELECT COUNT(*) FROM comisiones WHERE id_profesor = pr.id_profesor) as total_comisiones
FROM profesores pr;
SELECT * FROM vista_profesores;

CREATE OR REPLACE VIEW vista_alumnos AS
SELECT 	al.nombre,
		al.apellido,
		al.edad,
		al.dni
FROM alumnos al;
SELECT * FROM vista_alumnos;

CREATE OR REPLACE VIEW vista_inscriptos AS
SELECT 	ins.id_inscripto,
		cu.nombre As 'Curso',
		ins.nota,
		al.dni,
		al.nombre,
        al.apellido,
        al.edad,
        co.fecha_inicio,
        co.fecha_finalizacion
FROM inscripciones ins
JOIN alumnos al ON ins.id_alumno = al.id_alumno
JOIN comisiones co ON ins.id_comision = co.id_comision
JOIN cursos cu ON co.id_curso = cu.id_curso
;
SELECT * FROM vista_inscriptos;

CREATE OR REPLACE VIEW vista_asistencia AS
SELECT 	ins.id_inscripto,
		al.nombre AS 'Alumno',
		cu.nombre AS 'Curso',
        co.fecha_inicio,
        co.fecha_finalizacion,
        cu.cantidad_clases,
        COUNT(ina.id_inasistencia) AS total_inasistencias,
        cu.cantidad_clases - COUNT(ina.id_inasistencia) AS total_clases_asistidas
		
FROM inscripciones ins
JOIN alumnos al ON ins.id_alumno = al.id_alumno
JOIN inasistencias ina ON ins.id_inscripto = ina.id_inscripto 
JOIN comisiones co ON ins.id_comision = co.id_comision
JOIN cursos cu ON co.id_curso = cu.id_curso
GROUP BY ins.id_inscripto;
;
SELECT * FROM vista_asistencia;




