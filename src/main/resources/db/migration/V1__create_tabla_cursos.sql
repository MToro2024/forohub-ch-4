--Creacion tabla cursos
CREATE TABLE cursos(

    id BIGINT NOT NULL AUTO_INCREMENT,
    nombre varchar(100) not null unique,
    categoria varchar(100) not null,

    primary key(id)
);