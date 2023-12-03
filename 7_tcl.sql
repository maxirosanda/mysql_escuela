/* Eliminar 4 Alumnos */
USE escuela;
SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;
START TRANSACTION;
DELETE FROM inasistencias WHERE id_inasistencia = 1;
DELETE FROM inasistencias WHERE id_inasistencia = 2;
DELETE FROM inasistencias WHERE id_inasistencia = 3;
DELETE FROM inasistencias WHERE id_inasistencia = 4;
/*ROLLBACK;*/
/*COMMIT;*/

SELECT * FROM inasistencias;

/* Eliminar 8 Comisiones */
USE escuela;
SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;
START TRANSACTION;
INSERT INTO comisiones (id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion) VALUES (1, 2, 3, '2023-01-01', '2023-06-30');
INSERT INTO comisiones (id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion) VALUES (3, 2, 3, '2023-02-01', '2023-07-31');
INSERT INTO comisiones (id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion) VALUES (2, 2, 1, '2023-03-01', '2023-08-31');
INSERT INTO comisiones (id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion) VALUES (4,1,1, '2023-04-01', '2023-09-30');
SAVEPOINT lote1;
INSERT INTO comisiones(id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion) VALUES  (2, 2, 3, '2023-05-01', '2023-10-31');
INSERT INTO comisiones (id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion) VALUES (4, 2, 1, '2023-06-01', '2023-11-30');
INSERT INTO comisiones (id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion) VALUES (1, 2, 2, '2023-07-01', '2023-12-31');
INSERT INTO comisiones (id_curso, id_cede, id_profesor, fecha_inicio, fecha_finalizacion) VALUES (2, 2, 1, '2023-08-01', '2024-01-31');
SAVEPOINT lote2;
/*ROLLBACK TO lote1;*/
/*ROLLBACK TO lote2;*/
/*ROLLBACK;*/
/*COMMIT;*/
SELECT * FROM comisiones;