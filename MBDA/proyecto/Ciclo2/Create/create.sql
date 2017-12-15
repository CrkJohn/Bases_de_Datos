/*tablas*/
	CREATE TABLE Asiste(
		equipo NUMBER(4)  not null,
		evento NUMBER(10) not null
	);

	CREATE TABLE Inscripciones ( 
		valor NUMBER(6) not null,
		id_inscripcion NUMBER(4) not null,
		fecha  DATE not null,
		equipo NUMBER(4) not null, 
		evento NUMBER(10) not null
	);

	CREATE TABLE Eventos(
		nombre VARCHAR(80) not null , 
		nivel VARCHAR(16) not null ,
		id_evento NUMBER(10) null,
		fecha  DATE not null,
		fechaFin DATE null,
		cantidad_equipos NUMBER(10) not null ,
		clase VARCHAR(15) not null,
		costo NUMBER(6) not null,
		lugar NUMBER(4) not null,
		capacidad_maxima NUMBER(10) not null
	); 

	CREATE TABLE Tiene(
		id_problema NUMBER(5) not null ,
		id_evento  NUMBER(10)  not null
	);
		
	CREATE TABLE ScoreBoard(
		problemas_resueltos  NUMBER(2) not null,
		equipo   NUMBER(4) not null,
		id_evento   NUMBER(10) not null
	); 
	CREATE TABLE Realizan(
		id_evento   NUMBER(10)  not null,
		id_asociacion   NUMBER(10) not null
	); 
	CREATE TABLE Envios(
		id_envio   NUMBER(10) not null,
		problema NUMBER(5) not null,
		equipo NUMBER(4) not null,
		evento  NUMBER(10) not null,
		lenguage varchar(10) not null
	);

	CREATE TABLE Asociaciones(
		id_asociacion   NUMBER(10) not null, 
		nombre VARCHAR(10) not null ,
		acreditacion NUMBER(1) not null,
		proposito VARCHAR(100)null, 
		lugar NUMBER(4) not null
	);

	CREATE TABLE Veredictos(
		Tiempo NUMBER(4) null, 
		lenguage varchar(10) not null,
		resultado varchar(30) not null ,
		id_veredicto NUMBER(4) not null,
		envio  NUMBER(10) null,
		problema  NUMBER(5) not null, 
		usuario VARCHAR(30) null
	);