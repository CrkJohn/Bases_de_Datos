/*CREACION DE TABLAS*/
CREATE TABLE LUGARES(
                    ID_LUGAR NUMBER(4) NOT NULL,
                    PAIS VARCHAR(60) NOT NULL,
                    CIUDAD VARCHAR(60) NOT NULL,
                    CONTINENTE VARCHAR(60) NOT NULL
                    );

CREATE TABLE USUARIOS(
                    USERNAME VARCHAR(30) NOT NULL,
                    NOMBRE VARCHAR(60) NOT NULL,
                    CORREO VARCHAR(60) NOT NULL,
                    FECHA DATE NOT NULL,
                    TELEFONO NUMBER(30) NOT NULL,
                    OCUPACION VARCHAR(60) NOT NULL, 
                    ESTADO VARCHAR(6) NOT NULL,
                    LUGAR NUMBER(4) NOT NULL,
                    Perfil XMLTYPE NULL
                    );


CREATE TABLE GRUPOS (
                    ID_GRUPO NUMBER(4) NOT NULL, 
                    NOMBRE VARCHAR(15) NOT NULL, 
                    FECHA DATE DEFAULT SYSDATE NOT NULL,
                    CREADOR VARCHAR(30) NOT NULL
                    );


CREATE TABLE PERTENECE_GRUPO (
                            ID_USUARIO VARCHAR(30) NOT NULL, 
                            ID_GRUPO NUMBER(4) NOT NULL
                            );

CREATE TABLE EQUIPOS (
                    ID_EQUIPO NUMBER(4) NOT NULL,
                    NOMBRE VARCHAR(60) NOT NULL, 
                    FECHA_INICIO  DATE DEFAULT SYSDATE NOT NULL, 
                    FECHA_FIN DATE NULL,
                    LUGAR NUMBER(4) NOT NULL
                    );

CREATE TABLE PERTENECE_EQUIPO (
                             ID_USUARIO VARCHAR(30) NOT NULL,
                             ID_EQUIPO NUMBER(4) NOT NULL
                             );


CREATE TABLE TEMAS (
                    ID_TEMA VARCHAR(5) NOT NULL,
                    NOMBRE VARCHAR(100) NOT NULL, 
                    PADRE VARCHAR(5) NULL
                   );

CREATE TABLE PROBLEMAS (ID_PROBLEMA NUMBER(5) NOT NULL,
                        NOMBRE VARCHAR(40) NOT NULL,
                        PDF  VARCHAR(100) NOT NULL, 
                        TIEMPO NUMBER(4) NOT NULL, 
                        MEMORIA VARCHAR (5) NOT NULL, 
                        CREADOR VARCHAR(30) NOT NULL, 
                        TEMA VARCHAR(5) NOT NULL
                        );

CREATE TABLE PRUEBAS (
                    ID_PRUEBA NUMBER(4) NOT NULL, 
                    INPUT_CASE VARCHAR(1000) NOT NULL, 
                    OUTPUT_CASE VARCHAR(1000) NOT NULL,
                    PROPOSITO VARCHAR(100) NOT NULL, 
                    ID_PROBLEMA NUMBER(5) NOT NULL
                    );

CREATE TABLE GRUPO_TIENE_TEMA (
                               ID_GRUPO NUMBER(4) NOT NULL,
                               ID_TEMA VARCHAR(5) NOT NULL
                               );


CREATE TABLE COMENTARIOS (
                        ID_COMENTARIO NUMBER(6) NOT NULL, 
                        EXPLICACION VARCHAR(60) NOT NULL, 
                        FECHA DATE DEFAULT SYSDATE NOT NULL, 
                        GRUPO NUMBER(4) NULL, 
                        USUARIO VARCHAR(30) NOT NULL,
                        PROBLEMA NUMBER(5) NULL, 
                        ID_COMENTARIO_RESPUESTA NUMBER(10) NULL
                        );
