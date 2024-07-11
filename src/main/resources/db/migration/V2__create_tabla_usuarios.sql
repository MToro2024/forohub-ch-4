--Creacion tabla usuarios
create table usuarios(

    id bigint not null auto_increment,
    nombre varchar(100) not null unique,
    email varchar(100) not null unique,
    clave varchar(300) not null,

    primary key(id)
);

-- Inserto un record en la tabla usuario
INSERT INTO usuarios (id, nombre, email, clave) VALUES
(1, 'Juan Arevalo', 'j.arevalo@mail.com', '$2a$10$TDzoPPR6uArzNBUowsr9eOGZpn6KyT9/QLczm0MU6M3tSVgmDQLF.');