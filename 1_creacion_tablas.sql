CREATE SCHEMA `escuela` ;
Use escuela;
CREATE TABLE comisiones (
    id_comision INT AUTO_INCREMENT,
    id_curso INT,
	id_cede INT,
    id_profesor INT,
    fecha_inicio DATE,
    fecha_finalizacion DATE,
    CONSTRAINT PK_COMISIONES PRIMARY KEY (id_comision)
);
CREATE TABLE profesores (
    id_profesor INT AUTO_INCREMENT,
    dni VARCHAR(15) UNIQUE,
    nombre VARCHAR(60),
    apellido VARCHAR(60),
	edad TINYINT,
    CONSTRAINT PK_PROFESORES PRIMARY KEY (id_profesor)
);
CREATE TABLE cedes (
    id_cede INT AUTO_INCREMENT,
    nombre VARCHAR(60),
    direccion VARCHAR(60),
    localidad VARCHAR(60),
    tel VARCHAR(15),
    CONSTRAINT PK_CEDES PRIMARY KEY (id_cede)
);

CREATE TABLE cursos(
    id_curso INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    cantidad_clases TINYINT,
    id_categoria INT,
    id_dificultad INT,
    CONSTRAINT PK_CURSOS PRIMARY KEY (id_curso)
);
CREATE TABLE dificultad(
    id_dificultad INT AUTO_INCREMENT,
    dificultad VARCHAR(30),
    CONSTRAINT PK_DIFICULTAD PRIMARY KEY (id_dificultad)
);
CREATE TABLE categorias(
    id_categoria INT AUTO_INCREMENT,
    categoria VARCHAR(30),
    CONSTRAINT PK_CATEGORIA PRIMARY KEY (id_categoria)
);
CREATE TABLE inscripciones(
    id_inscripto INT AUTO_INCREMENT,
    nota TINYINT,
    id_comision INT,
	id_alumno INT,
    CONSTRAINT PK_INSCRIPCIONES PRIMARY KEY (id_inscripto)
);
CREATE TABLE alumnos(
    id_alumno INT AUTO_INCREMENT,
    dni VARCHAR(15) UNIQUE,
    nombre VARCHAR(60),
    apellido VARCHAR(60),
    edad INT,
    CONSTRAINT PK_ALUMNOS PRIMARY KEY (id_alumno)
);

CREATE TABLE inasistencias(
    id_inasistencia INT AUTO_INCREMENT,
    id_inscripto INT,
    fecha DATE,
    CONSTRAINT PK_INASISTENCIAS PRIMARY KEY (id_inasistencia)
);


CREATE TABLE historial_modificaciones_alumnos (
    id_historia INT AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT,
    dni_anterior VARCHAR(15),
    nombre_anterior VARCHAR(60),
    apellido_anterior VARCHAR(60),
    edad_anterior INT,
    accion VARCHAR(15),
    fecha_hora DATETIME,
    usuario VARCHAR(50)  -- Nueva columna para el usuario
);

CREATE TABLE historial_modificaciones_comisiones (
    id_historia INT AUTO_INCREMENT PRIMARY KEY,
    id_comision INT,
    id_curso INT,
    id_cede INT,
    id_profesor INT,
    fecha_inicio_anterior DATE,
    fecha_finalizacion_anterior DATE,
    accion VARCHAR(15),
    fecha_hora DATETIME,
    usuario VARCHAR(50)  -- Nueva columna para el usuario
);
ALTER TABLE comisiones
ADD FOREIGN KEY (id_cede) REFERENCES cedes(id_cede),
ADD FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
ADD FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor);

ALTER TABLE cursos
ADD FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
ADD FOREIGN KEY (id_dificultad) REFERENCES dificultad(id_dificultad);

ALTER TABLE inscripciones
ADD FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
ADD FOREIGN KEY (id_comision) REFERENCES comisiones(id_comision);

ALTER TABLE inasistencias
ADD FOREIGN KEY (id_inscripto) REFERENCES inscripciones(id_inscripto);


