USE escuela;
DELIMITER //

CREATE PROCEDURE ordenar_alumnos(IN p_columna VARCHAR(255), IN p_orden VARCHAR(255))
BEGIN
    SET @query = CONCAT('SELECT * FROM alumnos ORDER BY ', p_columna, ' ', p_orden);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
CALL ordenar_alumnos('nombre', 'ASC');

DELIMITER //
CREATE PROCEDURE obtener_comisiones_de_alumno(IN p_id_alumno INT)
BEGIN
    SELECT 
        a.nombre AS nombre_alumno,
        a.apellido AS apellido_alumno,
        c.id_comision,
        cu.nombre AS nombre_curso,
        cu.cantidad_clases,
        d.dificultad,
        cat.categoria
    FROM 
        alumnos a
    JOIN 
        inscripciones i ON a.id_alumno = i.id_alumno
    JOIN 
        comisiones c ON i.id_comision = c.id_comision
    JOIN 
        cursos cu ON c.id_curso = cu.id_curso
    JOIN 
        dificultad d ON cu.id_dificultad = d.id_dificultad
    JOIN 
        categorias cat ON cu.id_categoria = cat.id_categoria
    WHERE 
        a.id_alumno = p_id_alumno;
END //
DELIMITER ;
CALL obtener_comisiones_de_alumno(1);

DELIMITER //

CREATE PROCEDURE insertar_alumno_inscripcion(
    IN p_dni INT,
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_edad INT,
    IN p_id_comision INT
)
BEGIN
    DECLARE v_id_alumno INT;
    DECLARE v_id_inscripto INT;

    -- Insertar el nuevo alumno
    INSERT INTO alumnos (dni, nombre, apellido, edad)
    VALUES (p_dni, p_nombre, p_apellido, p_edad);

    -- Obtener el ID del nuevo alumno
    SET v_id_alumno = LAST_INSERT_ID();

    -- Validar que la comisión exista
    IF NOT EXISTS (SELECT 1 FROM comisiones WHERE id_comision = p_id_comision) THEN
        DELETE FROM alumnos WHERE id_alumno = v_id_alumno; -- Eliminar el alumno si la comisión no existe
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La comisión especificada no existe.';
    ELSE
        -- Insertar la inscripción
        INSERT INTO inscripciones (id_alumno, id_comision, nota)
        VALUES (v_id_alumno, p_id_comision, NULL);
    END IF;
END //

DELIMITER ;
CALL insertar_alumno_inscripcion(33080238, 'Maximiliano', 'Rosanda', 37, 1);
SELECT * FROM alumnos WHERE dni = 33080238