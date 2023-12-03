/*

En esta base de datos MySQL, se han creado tres tipos de usuarios con diferentes niveles de acceso. El usuario 
"administrador@localhost" tiene privilegios completos, lo que significa que puede realizar operaciones de lectura
y escritura en todas las tablas, como "comisiones", "inscripciones", "inasistencias", "profesores",
"alumnos", entre otras. Además, puede ejecutar varios procedimientos almacenados como "insertar_alumno_inscripcion" 
y "ordenar_alumnos". En resumen, el "administrador@localhost" tiene control total sobre la base de datos.

El usuario "editor@localhost" tiene permisos más limitados. Puede realizar operaciones de lectura y escritura en algunas
tablas específicas, como "comisiones", "inscripciones", "inasistencias", "profesores", "alumnos", y ejecutar ciertos 
procedimientos almacenados. Sin embargo, sus permisos son restringidos en comparación con el administrador.

Por último, el usuario "lector@localhost" tiene permisos de solo lectura en varias tablas y vistas, lo que significa que solo
puede ver la información almacenada en la base de datos, pero no tiene autorización para realizar cambios. En resumen,
"lector@localhost" tiene un acceso más limitado y está diseñado para solo visualizar la información existente.
*/
USE mysql;
/* Creo 3 tipos de usuarios */
CREATE USER "administrador@localhost" IDENTIFIED BY "123456";
CREATE USER "editor@localhost" IDENTIFIED BY "123456";
CREATE USER "lector@localhost" IDENTIFIED BY "123456";
SELECT * FROM USER;
/*---------------------------------------------------------*/
/* administrador tiene todos los permisos */
SELECT * FROM mysql.user WHERE user LIKE "administrador%";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.comisiones TO "administrador@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.inscripciones TO "administrador@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.inasistencias TO "administrador@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.profesores TO"administrador@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.alumnos TO "administrador@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.cursos TO "administrador@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.dificultad TO "administrador@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.categorias TO "administrador@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.cedes TO "administrador@localhost";
GRANT SELECT ON escuela.vista_alumnos TO "administrador@localhost";
GRANT SELECT ON escuela.vista_asistencia TO "administrador@localhost";
GRANT SELECT ON escuela.vista_comisiones TO "administrador@localhost";
GRANT SELECT ON escuela.vista_inscriptos TO "administrador@localhost";
GRANT SELECT ON escuela.vista_profesores TO "administrador@localhost";
GRANT EXECUTE ON PROCEDURE escuela.insertar_alumno_inscripcion TO "administrador@localhost";
GRANT EXECUTE ON PROCEDURE escuela.ordenar_alumnos TO "administrador@localhost";
GRANT EXECUTE ON PROCEDURE escuela.obtener_comisiones_de_alumno TO "administrador@localhost";
SHOW GRANTS FOR "administrador@localhost";
/* -----------------------------------------------------*/
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.comisiones TO "editor@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.inscripciones TO "editor@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.inasistencias TO "editor@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.profesores TO"editor@localhost";
GRANT SELECT, INSERT, UPDATE, DELETE ON escuela.alumnos TO "editor@localhost";
GRANT SELECT ON escuela.cursos TO "editor@localhost";
GRANT SELECT ON escuela.dificultad TO "editor@localhost";
GRANT SELECT ON escuela.categorias TO "editor@localhost";
GRANT SELECT ON escuela.cedes TO "editor@localhost";
GRANT SELECT ON escuela.vista_alumnos TO "editor@localhost";
GRANT SELECT ON escuela.vista_asistencia TO "editor@localhost";
GRANT SELECT ON escuela.vista_comisiones TO "editor@localhost";
GRANT SELECT ON escuela.vista_inscriptos TO "editor@localhost";
GRANT SELECT ON escuela.vista_profesores TO "editor@localhost";
GRANT EXECUTE ON PROCEDURE escuela.insertar_alumno_inscripcion TO "editor@localhost";
GRANT EXECUTE ON PROCEDURE escuela.ordenar_alumnos TO "editor@localhost";
GRANT EXECUTE ON PROCEDURE escuela.obtener_comisiones_de_alumno TO "editor@localhost";
SHOW GRANTS FOR "editor@localhost";
/*----------------------------------------------------------------------------*/
GRANT SELECT ON escuela.comisiones TO "lector@localhost";
GRANT SELECT ON escuela.inscripciones TO "lector@localhost";
GRANT SELECT ON escuela.inasistencias TO "lector@localhost";
GRANT SELECT ON escuela.profesores TO"lector@localhost";
GRANT SELECT ON escuela.alumnos TO "lector@localhost";
GRANT SELECT ON escuela.cursos TO "lector@localhost";
GRANT SELECT ON escuela.dificultad TO "lector@localhost";
GRANT SELECT ON escuela.categorias TO "lector@localhost";
GRANT SELECT ON escuela.cedes TO "lector@localhost";
GRANT SELECT ON escuela.vista_alumnos TO "lector@localhost";
GRANT SELECT ON escuela.vista_asistencia TO "lector@localhost";
GRANT SELECT ON escuela.vista_comisiones TO "lector@localhost";
GRANT SELECT ON escuela.vista_inscriptos TO "lector@localhost";
GRANT SELECT ON escuela.vista_profesores TO "lector@localhost";
GRANT EXECUTE ON PROCEDURE escuela.obtener_comisiones_de_alumno TO "lector@localhost";
SHOW GRANTS FOR "lector@localhost";