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