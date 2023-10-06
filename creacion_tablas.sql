

CREATE TABLE comisiones (
    id_comision INT AUTO_INCREMENT,
    id_cede INT,
    id_curso INT,
    id_profesor INT,
    CONSTRAINT PK_COMISIONES PRIMARY KEY (id_comision)
);
CREATE TABLE profesores (
    id_profesor INT AUTO_INCREMENT,
    dni_profesor VARCHAR(15),
    edad_profesor TINYINT,
    nombre_profesor VARCHAR(60),
    apellido_profesor VARCHAR(60),
    CONSTRAINT PK_PROFESORES PRIMARY KEY (id_profesor)
);
CREATE TABLE cedes (
    id_cede INT AUTO_INCREMENT,
    nombre_cede VARCHAR(60),
    direccion_cede VARCHAR(60),
    localidad_cede VARCHAR(60),
    tel_cede VARCHAR(15),
    CONSTRAINT PK_CEDES PRIMARY KEY (id_cede)
);

CREATE TABLE cursos(
    id_curso INT AUTO_INCREMENT,
    nombre_curso VARCHAR(30),
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
    categoria_curso VARCHAR(30),
    CONSTRAINT PK_CATEGORIA PRIMARY KEY (id_categoria)
);
CREATE TABLE inscripciones(
    id_inscripto INT AUTO_INCREMENT,
    id_nota INT,
    id_alumno INT,
    id_comision INT,
    CONSTRAINT PK_INSCRIPCIONES PRIMARY KEY (id_inscripto)
);
CREATE TABLE alumnos(
    id_alumno INT AUTO_INCREMENT,
    dni_alumno VARCHAR(15),
    nombre_alumno VARCHAR(60),
    apellido_alumno VARCHAR(60),
    edad_alumno INT,
    CONSTRAINT PK_ALUMNOS PRIMARY KEY (id_alumno)
);
CREATE TABLE notas(
    id_nota INT AUTO_INCREMENT,
    id_inscripto int,
    primer_parcial 	TINYINT,
    segundo_parcial TINYINT,
    nota_final 	TINYINT,
    CONSTRAINT PK_NOTAS PRIMARY KEY (id_nota)
);
CREATE TABLE asistencias(
    id_asistencia INT AUTO_INCREMENT,
    id_inscripto INT,
    fecha DATE,
    CONSTRAINT PK_ASISTENCIAS PRIMARY KEY (id_asistencia)
);
ALTER TABLE comisiones
ADD FOREIGN KEY (id_cede) REFERENCES cedes(id_cede),
ADD FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
ADD FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor);

ALTER TABLE cursos
ADD FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
ADD FOREIGN KEY (id_dificultad) REFERENCES dificultad(id_dificultad);

ALTER TABLE inscripciones
ADD FOREIGN KEY (id_nota) REFERENCES notas(id_nota),
ADD FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
ADD FOREIGN KEY (id_comision) REFERENCES comisiones(id_comision);

ALTER TABLE asistencias
ADD FOREIGN KEY (id_inscripto) REFERENCES inscripciones(id_inscripto);


