1. 
	a. SELECT * FROM bdmbda1.personas;
	b. 
		INSERT INTO bdmbda1.personas VALUES (33586,'Ana','ana@gmail.com',3,null,null,null);
		INSERT INTO bdmbda1.personas VALUES (21586,'John','john@gmail.com',4,null,null,null);
	c. 
		No se tienen privilegios para realizar estas acciones.
	d.
		
		GRANT 
		  UPDATE,DELETE ON bdmbda1.personas TO bd2133586,bd2129082;
	e. 

  INSERT INTO PERSONAS SELECT distinct p1.codigo,p1.nombre,p1.correo FROM BDMBDA1.PERSONAS p1 
  WHERE 1 = (SELECT count(correo) FROM BDMBDA1.PERSONAS WHERE p1.correo = correo) AND 1 = (SELECT count(codigo) FROM BDMBDA1.PERSONAS WHERE p1.codigo = codigo);


  INSERT INTO ADMINISTRATIVO SELECT distinct p1.CONTRATO,p1.CODIGO FROM BDMBDA1.PERSONAS p1 
  WHERE 1 = (SELECT count(correo) FROM BDMBDA1.PERSONAS WHERE p1.correo = correo) AND 1 = (SELECT count(codigo) FROM BDMBDA1.PERSONAS WHERE p1.codigo = codigo) AND p1.contrato is not null;


  INSERT INTO PROFESORES SELECT distinct p1.FORMACION,p1.CODIGO FROM BDMBDA1.PERSONAS p1 
  WHERE 1 = (SELECT count(correo) FROM BDMBDA1.PERSONAS WHERE p1.correo = correo) AND 1 = (SELECT count(codigo) FROM BDMBDA1.PERSONAS WHERE p1.codigo = codigo) AND p1.contrato is not null AND p1.formacion is not null;

  INSERT INTO ESTUDIANTES SELECT distinct p1.codigo,p1.semestre,null FROM BDMBDA1.PERSONAS p1 
  WHERE 1 = (SELECT count(correo) FROM BDMBDA1.PERSONAS WHERE p1.correo = correo) AND 1 = (SELECT count(codigo) FROM BDMBDA1.PERSONAS WHERE p1.codigo = codigo) AND p1.semestre is not null;


	
2. 

CREATE OR REPLACE PACKAGE PC_INCIDENTES IS 
  PROCEDURE AD_INCIDENTE (xdescripcion IN VARCHAR);
  PROCEDURE AD_ACCIDENTE (xestado IN CHAR,xinvestigado IN NUMBER, xdetalle IN VARCHAR,xincidente IN NUMBER);
  PROCEDURE AD_CONDICION (xriesgo IN NUMBER ,xincidente IN NUMBER);
  PROCEDURE AD_ESTAINVOLUCRADA (xconsecuencia IN VARCHAR,xcodigo IN NUMBER,xaccidente IN NUMBER);
  PROCEDURE AD_ESCAUSA (xcod_incidente IN NUMBER ,xaci_incidente IN NUMBER);
  PROCEDURE AD_ZONA (xzona IN VARCHAR,xincidente IN NUMBER);
  FUNCTION CO_INCIDENTE  RETURN SYS_REFCURSOR;
  FUNCTION CO_ACCIDENTE  RETURN SYS_REFCURSOR;
  FUNCTION CO_CONDICION RETURN SYS_REFCURSOR;
  FUNCTION CO_ESTAINVOLUCRADA RETURN SYS_REFCURSOR;
  FUNCTION CO_ESCAUSA RETURN SYS_REFCURSOR;
  FUNCTION CO_ZONA RETURN SYS_REFCURSOR;
  FUNCTION CO_ZONA_INCIDENTE (xcodigo IN NUMBER) RETURN SYS_REFCURSOR;
  FUNCTION CO_RIESGO_INCIDENTE (xcodigo IN NUMBER) RETURN SYS_REFCURSOR;
  FUNCTION CO_CONSECUENCIAS_ACCIDENTES (xcodigo IN NUMBER) RETURN SYS_REFCURSOR;
END PC_INCIDENTES;

CREATE OR REPLACE PACKAGE PC_INVESTIGACION IS 
	PROCEDURE AD_INVESTIGACION (xarea IN  VARCHAR,xfecha IN DATE ,xobjetivo  IN VARCHAR,ximpacto  IN NUMBER,xaccidente  IN NUMBER , xprofesor IN NUMBER);
	PROCEDURE EL_INVESTIGACION (xaccidente  IN NUMBER);
	
	PROCEDURE AD_EsResultado  (xaccidente IN NUMBER,xcodigo IN VARCHAR,xexplica IN NUMBER);
	PROCEDURE MOD_EsResultado  (xaccidente IN NUMBER,xcodigo IN VARCHAR , xexplica IN NUMBER);
	PROCEDURE EL_EsResultado  (xaccidente IN NUMBER,xcodigo IN VARCHAR);

	FUNCTION CO_EsResultado  RETURN SYS_REFCURSOR;
	FUNCTION CO_INVESTIGACION RETURN SYS_REFCURSOR;
	FUNCTION CO_INVESTIGACIONES_PENDITNES RETURN SYS_REFCURSOR;
END PC_INVESTIGACION;

CREATE OR REPLACE PACKAGE BODY PC_INVESTIGACION IS 

  PROCEDURE AD_INVESTIGACION (xarea IN  VARCHAR,xfecha IN DATE ,xobjetivo  IN VARCHAR,ximpacto  IN NUMBER,xaccidente  IN NUMBER , xprofesor IN NUMBER) IS	
	BEGIN
      INSERT INTO INVESTIGACION (area ,fecha ,objetivo ,impacto ,accidente , profesor ) VALUES (xarea ,xfecha ,xobjetivo ,ximpacto ,xaccidente , xprofesor );
      COMMIT;
      EXCEPTION 
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'No se puede insertar investigacion.');
    END;

	PROCEDURE EL_INVESTIGACION (xaccidente  IN NUMBER) IS 
    BEGIN 
      DELETE FROM  INVESTIGACION  WHERE  accidente  = xaccidente;
	COMMIT; 
	EXCEPTION
      WHEN OTHERS THEN 
       ROLLBACK;
       RAISE_APPLICATION_ERROR(-20000,'Error al eliminar investigacion.');
   END;

	PROCEDURE AD_EsResultado  (xaccidente IN NUMBER,xcodigo IN VARCHAR,xexplica IN NUMBER) IS 
    BEGIN
      INSERT INTO es_resultado(accidente ,codigo ,explica) VALUES (xaccidente,xcodigo,xexplica );
      COMMIT;
      EXCEPTION 
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'No se puede insertar es resultado.');
    END;

	PROCEDURE MOD_EsResultado (xaccidente IN NUMBER,xcodigo IN VARCHAR , xexplica IN NUMBER) IS 
	   BEGIN 
		  UPDATE ES_RESULTADO  SET explica  =  xexplica  WHERE   xcodigo = codigo  and  xaccidente = accidente;
	   COMMIT; 
	   EXCEPTION
		  WHEN OTHERS THEN 
		   ROLLBACK;
		   RAISE_APPLICATION_ERROR(-20000,'Error al modificar en es resultado.');
	END;
	
	PROCEDURE EL_EsResultado(xaccidente IN NUMBER,xcodigo IN VARCHAR) IS 
    BEGIN
      DELETE FROM  es_resultado WHERE xaccidente = accidente and xcodigo = codigo;
      COMMIT;
      EXCEPTION 
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'No se puede eliminar es resultado.');
    END;
	
	FUNCTION CO_EsResultado   RETURN SYS_REFCURSOR IS CO_ER SYS_REFCURSOR;
	BEGIN
	OPEN CO_ER  FOR
		SELECT * FROM ES_RESULTADO;
	RETURN CO_ER;
	END;
  
	FUNCTION CO_INVESTIGACION RETURN SYS_REFCURSOR IS CO_IN SYS_REFCURSOR;
	BEGIN
    OPEN CO_IN FOR  
      SELECT * FROM INVESTIGACION;
    RETURN CO_IN;
	END;
  
	FUNCTION CO_INVESTIGACIONES_PENDITNES RETURN SYS_REFCURSOR IS CO_IP SYS_REFCURSOR;
	BEGIN
    OPEN CO_IP  FOR
		SELECT numero,incidentes.FECHA,area,objetivo,explica
		FROM investigacion,accidentes,incidentes,es_resultado 
		WHERE  accidentes.INCIDENTE= investigacion.ACCIDENTE AND incidentes.NUMERO= accidentes.INCIDENTE AND es_resultado.ACCIDENTE= investigacion.ACCIDENTE  AND investigacion.fecha is null
		ORDER BY explica DESC;	  
    RETURN CO_IP;
	END;

END PC_INVESTIGACION;

CREATE OR REPLACE PACKAGE BODY PC_INCIDENTES IS 

  PROCEDURE AD_INCIDENTE (xdescripcion IN VARCHAR) IS 
    BEGIN
      INSERT INTO INCIDENTES (descripcion) VALUES (xdescripcion);
      COMMIT;
      EXCEPTION 
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'No se puede insertar incidente.');
    END;
    
  PROCEDURE AD_ACCIDENTE (xestado IN CHAR,xinvestigado IN NUMBER, xdetalle IN VARCHAR,xincidente IN NUMBER) IS 
   BEGIN 
      INSERT INTO ACCIDENTES (estado ,investigado, detalle ,incidente) VALUES(xestado ,xinvestigado, xdetalle ,xincidente);
   COMMIT; 
   EXCEPTION
      WHEN OTHERS THEN 
       ROLLBACK;
       RAISE_APPLICATION_ERROR(-20000,'Error al insertar en accidentes.');
   END;
  PROCEDURE AD_CONDICION (xriesgo IN NUMBER ,xincidente IN NUMBER) IS 
     BEGIN 
      INSERT INTO CONDICIONES (riesgo ,incidentes) VALUES(xriesgo  ,xincidente);
   COMMIT; 
   EXCEPTION
      WHEN OTHERS THEN 
       ROLLBACK;
       RAISE_APPLICATION_ERROR(-20000,'Error al insertar en condiciones.');
   END;
  PROCEDURE AD_ESTAINVOLUCRADA (xconsecuencia IN VARCHAR,xcodigo IN NUMBER,xaccidente IN NUMBER) IS
    BEGIN 
      INSERT INTO ESTA_INVOLUCRADO (consecuencia,codigo,accidente) VALUES  (xconsecuencia,xcodigo,xaccidente);
      COMMIT; 
      EXCEPTION
      WHEN OTHERS THEN 
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20000,'Error al insertar en ESTA INVOLUCRADA.');
    END;
  
  PROCEDURE AD_ESCAUSA (xcod_incidente IN NUMBER ,xaci_incidente IN NUMBER) IS 
    BEGIN 
      INSERT INTO ES_CAUSA(cod_incidente  ,aci_incidente )  VALUES (xcod_incidente  ,xaci_incidente )  ;
      COMMIT; 
      EXCEPTION
      WHEN OTHERS THEN 
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20000,'Error al insertar en ES_CAUSA.');
    END;
  PROCEDURE AD_ZONA (xzona IN VARCHAR,xincidente IN NUMBER)IS 
     BEGIN 
      INSERT INTO ZONAS (zona,incidente) VALUES (xzona,xincidente);
      COMMIT; 
      EXCEPTION
      WHEN OTHERS THEN 
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20000,'Error al insertar en AD_ZONA.');
    END;
  
  FUNCTION CO_ZONA_INCIDENTE (xcodigo IN NUMBER) RETURN SYS_REFCURSOR IS ZO_INCIDENTE SYS_REFCURSOR;
  BEGIN
    OPEN ZO_INCIDENTE  FOR
        SELECT * FROM ZONAS WHERE INCIDENTE= xcodigo;
    RETURN ZO_INCIDENTE;
  END;
  
  FUNCTION CO_RIESGO_INCIDENTE (xcodigo IN NUMBER) RETURN SYS_REFCURSOR IS CO_RIESGO_INC SYS_REFCURSOR;
  BEGIN
    OPEN CO_RIESGO_INC FOR  
      SELECT riesgo.probabilidad,incidentes.numero,incidentes.descripcion
      FROM investigacion,accidentes,incidentes,es_resultado,riesgo 
      WHERE  incidentes.numero= xcodigo AND  accidentes.INCIDENTE= investigacion.ACCIDENTE AND incidentes.NUMERO= accidentes.INCIDENTE
           AND es_resultado.codigo= riesgo.codigo
             AND es_resultado.ACCIDENTE= investigacion.ACCIDENTE;      
    RETURN CO_RIESGO_INC;
  END;
  
  FUNCTION CO_CONSECUENCIAS_ACCIDENTES (xcodigo IN NUMBER) RETURN SYS_REFCURSOR IS CO_CONSECUENCIAS_ACC SYS_REFCURSOR;
  BEGIN
    OPEN CO_CONSECUENCIAS_ACC  FOR
      SELECT esta_involucrado.consecuencia,accidentes.incidente 
      FROM accidentes,esta_involucrado
      WHERE accidentes.INCIDENTE= xcodigo AND esta_involucrado.accidente= accidentes.incidente;
    RETURN CO_CONSECUENCIAS_ACC;
  END;
  
  FUNCTION CO_INCIDENTE  RETURN SYS_REFCURSOR IS CO_INC SYS_REFCURSOR;
  BEGIN 
	OPEN CO_INC FOR
		SELECT * FROM INCIDENTES;
	RETURN CO_INC;
  END;
  
  FUNCTION CO_ACCIDENTE  RETURN SYS_REFCURSOR IS CO_ACC SYS_REFCURSOR;
  BEGIN 
	OPEN CO_ACC FOR
		SELECT * FROM ACCIDENTES;
	RETURN CO_ACC;
  END;
  
  FUNCTION CO_CONDICION RETURN SYS_REFCURSOR IS CO_CON SYS_REFCURSOR;
  BEGIN 
	OPEN CO_CON FOR
		SELECT * FROM CONDICIONES;
	RETURN CO_CON;
  END;
  
  FUNCTION CO_ESTAINVOLUCRADA RETURN SYS_REFCURSOR IS CO_EST SYS_REFCURSOR;
  BEGIN	
	OPEN CO_EST FOR	
		SELECT * FROM ESTA_INVOLUCRADO;
	RETURN CO_EST;
  END;
  
  FUNCTION CO_ESCAUSA RETURN SYS_REFCURSOR IS CO_ES SYS_REFCURSOR;
  BEGIN 
	OPEN CO_ES FOR
		SELECT * FROM ES_CAUSA;
	RETURN CO_ES;
  END;
  
  FUNCTION CO_ZONA RETURN SYS_REFCURSOR IS CO_ZO SYS_REFCURSOR;
  BEGIN
	OPEN CO_ZO FOR
		SELECT * FROM ZONAS;
	RETURN CO_ZO;
  END;

END PC_INCIDENTES;

3.
CREATE OR REPLACE PACKAGE PA_DIRECTORSST IS
	PROCEDURE AD_INVESTIGACION (xarea IN  VARCHAR,xfecha IN DATE ,xobjetivo  IN VARCHAR,ximpacto  IN NUMBER,xaccidente  IN NUMBER , xprofesor IN NUMBER);
	PROCEDURE MOD_ES_RESULTADO (xexplica IN VARCHAR,xcodigo in VARCHAR , xaccidente  IN NUMBER );
	PROCEDURE EL_INVESTIGACION (xaccidente  IN NUMBER);
	PROCEDURE AD_EsResultado  (xaccidente IN NUMBER,xcodigo IN VARCHAR,xexplica IN NUMBER);
	PROCEDURE EL_EsResultado  (xaccidente IN NUMBER,xcodigo IN VARCHAR);
	FUNCTION CO_EsResultado  RETURN SYS_REFCURSOR;
	FUNCTION CO_INVESTIGACION RETURN SYS_REFCURSOR;
	FUNCTION CO_INVESTIGACIONES_PENDITNES RETURN SYS_REFCURSOR;
END PA_DIRECTORSST;

CREATE OR REPLACE PACKAGE PA_PROFESOR IS
	PROCEDURE PRO_MOD_ES_RESULTADO (xexplica IN VARCHAR,xcodigo in VARCHAR , xaccidente  IN NUMBER );
	FUNCTION PRO_CO_INVESTIGACIONES_PEN RETURN SYS_REFCURSOR;
END PA_PROFESOR;

CREATE OR REPLACE PACKAGE BODY PA_PROFESOR IS
	PROCEDURE PRO_MOD_ES_RESULTADO(xexplica IN VARCHAR,xcodigo in VARCHAR , xaccidente  IN NUMBER ) is
	BEGIN
		PC_INVESTIGACION.MOD_EsResultado(xexplica,xcodigo,xaccidente);
	END;
	
	FUNCTION PRO_CO_INVESTIGACIONES_PEN RETURN SYS_REFCURSOR IS PRO_CO_IP SYS_REFCURSOR;
	BEGIN
				PRO_CO_IP := PC_INVESTIGACION.CO_INVESTIGACIONES_PENDITNES;
		RETURN PRO_CO_IP;
	END;
END PA_PROFESOR;

CREATE OR REPLACE PACKAGE BODY  PA_DIRECTORSST IS 

  PROCEDURE AD_INVESTIGACION (xarea IN  VARCHAR,xfecha IN DATE ,xobjetivo  IN VARCHAR,ximpacto  IN NUMBER,xaccidente  IN NUMBER , xprofesor IN NUMBER) IS 
    BEGIN
      PC_INVESTIGACION.AD_INVESTIGACION (xarea ,xfecha ,xobjetivo ,ximpacto ,xaccidente , xprofesor );
    END;

  PROCEDURE MOD_ES_RESULTADO (xexplica in varchar ,xcodigo in VARCHAR , xaccidente  IN NUMBER ) IS 
   BEGIN 
      PC_INVESTIGACION.MOD_EsResultado (xexplica ,xcodigo , xaccidente);
   END;
   
  PROCEDURE EL_INVESTIGACION (xaccidente  IN NUMBER) IS 
  BEGIN 
    PC_INVESTIGACION.EL_INVESTIGACION (xaccidente);    
   END;
   
  PROCEDURE AD_EsResultado  (xaccidente IN NUMBER,xcodigo IN VARCHAR,xexplica IN NUMBER) IS
  BEGIN 
	PC_INVESTIGACION.AD_EsResultado (xaccidente,xcodigo,xexplica);
  END;
  
  PROCEDURE EL_EsResultado  (xaccidente IN NUMBER,xcodigo IN VARCHAR) IS
  BEGIN
	PC_INVESTIGACION.EL_EsResultado(xaccidente,xcodigo);
  END;
   
  FUNCTION CO_EsResultado RETURN SYS_REFCURSOR IS  ESRESUL SYS_REFCURSOR;
  BEGIN 
    ESRESUL:= PC_INVESTIGACION.CO_EsResultado;
    RETURN ESRESUL;
  END;

  FUNCTION CO_INVESTIGACION RETURN SYS_REFCURSOR IS CO_IN SYS_REFCURSOR;
  BEGIN
    CO_IN:= PC_INVESTIGACION.CO_INVESTIGACION;
    RETURN CO_IN;
  END;

  FUNCTION CO_INVESTIGACIONES_PENDITNES RETURN SYS_REFCURSOR IS CO_IP SYS_REFCURSOR;
  BEGIN
    CO_IP:= PC_INVESTIGACION.CO_INVESTIGACIONES_PENDITNES;  
    RETURN CO_IP;
  END;
END PA_DIRECTORSST;
3(b).
	GRANT EXECUTE ON PA_DIRECTORSST TO bd2124471;
	
3(C).
CREATE ROLE PROFESORES;
GRANT PROFESORES TO bd2124471;
GRANT PROFESORES TO bd2124259;

GRANT EXECUTE ON PA_PROFESOR TO PROFESORES;

DROP ROLE PROFESORES;


/*DB*/

CREATE TABLE zonas(zona VARCHAR(10)NOT NULL,incidente NUMBER(5)NOT NULL);
CREATE TABLE es_causa(cod_incidente NUMBER(5) NOT NULL, aci_incidente NUMBER(5) NOT NULL);
CREATE TABLE tiene(numero NUMBER(5)NOT NULL,codigo VARCHAR(3) NOT NULL);
CREATE TABLE investigacion(area CHAR(1),fecha DATE NULL,objetivo VARCHAR(5),impacto NUMBER(1) ,accidente NUMBER(5) NOT NULL,profesor NUMBER(5));
CREATE table es_resultado(accidente NUMBER(5)NOT NULL,codigo VARCHAR(3)NOT NULL,explica NUMBER(3));
CREATE TABLE riesgo(codigo varchar(3) NOT NULL,nombre varchar(20),probabilidad NUMBER(3));
CREATE TABLE condiciones(riesgo NUMBER(1) ,incidentes NUMBER(5) NOT NULL);
CREATE TABLE accidentes(estado CHAR(2) ,investigado NUMBER(3),detalle XMLTYPE NULL,incidente NUMBER(5) NOT NULL);
CREATE TABLE incidentes(numero NUMBER(5) NOT NULL,fecha DATE, descripcion VARCHAR(200));
CREATE TABLE esta_involucrado(consecuencia VARCHAR(50),codigo NUMBER(5)NOT NULL,accidente NUMBER(5)NOT NULL);
CREATE TABLE administrativo(contrato CHAR(1),codigo NUMBER(5)NOT NULL);
CREATE TABLE estudiantes(codigo NUMBER(5) NOT NULL,semestre NUMBER(2),profesor NUMBER(5) NULL);
CREATE TABLE profesores(formacion VARCHAR(10),codigo NUMBER(5)NOT NULL);
CREATE TABLE areas(area CHAR(1)NOT NULL,codigo NUMBER(5)NOT NULL);
CREATE TABLE personas(codigo NUMBER(5)NOT NULL,nombre VARCHAR(50),correo VARCHAR(50)NOT NULL);
CREATE TABLE causas(codigo VARCHAR(3)NOT NULL,tipo VARCHAR(30) ,nombre VARCHAR(50));

/*ALTER TABLE personas MODIFY (correo CHECK(correo LIKE '%escuelaing.edu.co' ));*/
ALTER TABLE causas MODIFY (tipo CHECK(tipo LIKE 'E%' OR tipo LIKE 'I%'));
ALTER TABLE areas MODIFY(area CHECK (area='I' OR area='P' OR area='C' ));
ALTER TABLE estudiantes MODIFY (semestre CHECK(semestre>=1));
ALTER TABLE administrativo MODIFY(contrato CHECK(contrato='F' OR contrato ='I'));
ALTER TABLE accidentes MODIFY (investigado CHECK(investigado>-1 AND investigado<101));
ALTER TABLE accidentes MODIFY(estado CHECK (estado = 'AR' OR estado='EI' OR estado='RI'));
ALTER TABLE incidentes MODIFY(numero CHECK (numero>0));
ALTER TABLE condiciones MODIFY (riesgo CHECK(riesgo<6 AND riesgo>0));
ALTER TABLE investigacion MODIFY (area  CHECK (area='I' OR area='P' OR area='C'));
ALTER TABLE investigacion MODIFY(impacto CHECK(impacto<6 AND impacto>0));
ALTER TABLE riesgo MODIFY (probabilidad CHECK(probabilidad>-1 AND probabilidad<101));
ALTER TABLE es_resultado MODIFY (explica CHECK(explica>-1 AND explica<101));
ALTER TABLE zonas MODIFY (zona CHECK(zona LIKE '% %'));

ALTER TABLE incidentes ADD CONSTRAINT PK_incidentes PRIMARY KEY(numero);
ALTER TABLE zonas ADD CONSTRAINT PK_zonas PRIMARY KEY(zona,incidente);
ALTER TABLE condiciones ADD CONSTRAINT PK_condiciones PRIMARY KEY(incidentes);
ALTER TABLE tiene ADD CONSTRAINT PK_tiene PRIMARY KEY(numero,codigo);
ALTER TABLE causas ADD CONSTRAINT PK_causa PRIMARY KEY(codigo);
ALTER TABLE accidentes ADD CONSTRAINT PK_accidente PRIMARY KEY(incidente);
ALTER TABLE es_causa ADD CONSTRAINT PK_esCausa PRIMARY KEY(cod_incidente,aci_incidente);
ALTER TABLE es_resultado ADD CONSTRAINT PK_esResultado PRIMARY KEY(codigo,accidente); 
ALTER TABLE esta_involucrado ADD CONSTRAINT PK_estaInvolucrado PRIMARY KEY(codigo,accidente);
AlTER TABLE administrativo ADD CONSTRAINT PK_administrativo PRIMARY KEY(codigo);
ALTER TABLE personas ADD CONSTRAINT PK_personas PRIMARY KEY(codigo);
ALTER TABLE investigacion ADD CONSTRAINT PK_investigacion PRIMARY KEY(accidente);
ALTER TABLE riesgo ADD CONSTRAINT PK_riesgo PRIMARY KEY(codigo);
ALTER TABLE areas ADD CONSTRAINT PK_areas PRIMARY KEY(area,codigo);
ALTER TABLE estudiantes ADD CONSTRAINT PK_estudiantes PRIMARY KEY(codigo);
ALTER TABLE profesores ADD CONSTRAINT PK_profesores PRIMARY KEY(codigo);

  
ALTER TABLE investigacion ADD CONSTRAINT UK_investigacion UNIQUE (objetivo);
ALTER TABLE personas ADD CONSTRAINT UK_personas UNIQUE (correo);


ALTER TABLE tiene ADD CONSTRAINT FK_numero FOREIGN KEY (numero) 
REFERENCES incidentes(numero);
ALTER TABLE tiene ADD CONSTRAINT FK_codigo FOREIGN KEY(codigo)
REFERENCES causas(codigo);
ALTER TABLE zonas ADD CONSTRAINT FK_incidentes FOREIGN KEY(incidente)
REFERENCES incidentes(numero);
ALTER TABLE condiciones ADD CONSTRAINT FK_incidente_condic FOREIGN KEY(incidentes)
REFERENCES incidentes(numero);
ALTER TABLE es_causa ADD CONSTRAINT FK_codigoincidente FOREIGN KEY(cod_incidente)
REFERENCES condiciones(incidentes);
ALTER TABLE es_causa ADD CONSTRAINT FK_acincidente FOREIGN KEY(aci_incidente)
REFERENCES accidentes(incidente);
ALTER TABLE accidentes ADD CONSTRAINT FK_accincidentes FOREIGN KEY(incidente) 
REFERENCES incidentes(numero);
ALTER TABLE es_resultado ADD CONSTRAINT FK_resulcodigo FOREIGN KEY(codigo)
REFERENCES riesgo(codigo);
ALTER TABLE es_resultado ADD CONSTRAINT FK_resaccidente FOREIGN KEY(accidente)
REFERENCES investigacion(accidente);
ALTER TABLE investigacion ADD CONSTRAINT FK_accidente FOREIGN KEY(accidente)
REFERENCES accidentes(incidente);
ALTER TABLE investigacion ADD CONSTRAINT FK_invprofesor FOREIGN KEY(profesor)
REFERENCES profesores(codigo);
ALTER TABLE profesores ADD CONSTRAINT FK_profesor FOREIGN KEY(codigo)
REFERENCES administrativo(codigo);
ALTER TABLE esta_involucrado ADD CONSTRAINT FK_adminis FOREIGN KEY(codigo)
REFERENCES personas(codigo);
ALTER TABLE esta_involucrado ADD CONSTRAINT FK_adminisacc FOREIGN KEY(accidente)
REFERENCES accidentes(incidente);
ALTER TABLE administrativo ADD CONSTRAINT FK_peradmin FOREIGN KEY(codigo)
REFERENCES personas(codigo);
ALTER TABLE estudiantes ADD CONSTRAINT FK_estcodigo FOREIGN KEY(codigo)
REFERENCES personas(codigo);
ALTER TABLE estudiantes ADD CONSTRAINT FK_estprofesor FOREIGN KEY(profesor)
REFERENCES profesores(codigo);
ALTER TABLE areas ADD CONSTRAINT FK_area FOREIGN KEY(codigo)
REFERENCES profesores(codigo);
/*
CREATE OR REPLACE TRIGGER Correo
BEFORE INSERT ON personas
FOR EACH ROW
DECLARE xCorreo varchar(50);
Existe NUMBER;
BEGIN
  xCorreo := CONCAT((REPLACE(TRIM(:new.nombre),' ','.')),'@escuelaing.edu.co');
  SELECT count(*) INTO  Existe from personas WHERE xCorreo=correo;
  IF Existe=0   THEN 
     :new.correo := xCorreo;
  ELSE
    RAISE_APPLICATION_ERROR(-20986,'No se puede ingreasar un correo asociado  a su nombre, ya existe');
  END IF;  
END;
/
/*GESTIONAR INVESTIGACIONES trigger(automatizacion)
Tener en cuenta que el atributo investigado de los accidentes debe mantenerse actualizado y que
cuanto se logra el 100% en los riesgos asociados a la investigación debe actualizarse inmediatamente
la fecha de fin de la misma*/

CREATE OR REPLACE TRIGGER actu_esresultado
BEFORE INSERT ON es_resultado
FOR EACH ROW
DECLARE sumaT  NUMBER;
BEGIN
  UPDATE accidentes SET investigado = :new.explica + investigado WHERE :new.accidente = accidentes.incidente;
END;
/
CREATE OR REPLACE TRIGGER fecha_accidente
AFTER UPDATE ON accidentes
FOR EACH ROW
BEGIN
  IF :new.investigado= 100 THEN
    UPDATE investigacion SET fecha= TO_DATE(sysdate,'DD-MM-YYYY') WHERE :old.incidente= investigacion.accidente;
  END IF;
END;
/
/*La adición sólo la puede hacer el Director SST.
El profesor lider debe ser experto en al área de la investigación.*/

CREATE OR REPLACE TRIGGER investigación_lider
BEFORE INSERT ON investigacion
FOR EACH ROW
DECLARE xarea VARCHAR(1);
BEGIN
  SELECT COUNT(*) INTO xarea FROM profesores,areas WHERE profesores.codigo= areas.codigo AND profesores.codigo= :new.profesor AND area= :new.area;
  IF xarea < 1 THEN
    RAISE_APPLICATION_ERROR(-20034,'No puede tener profesor que no sea experto para el area de investigacion');
  END IF;
END;

/
/*No se pueden incluir resultados hasta el que el accidente no esté en investigación. */
CREATE OR REPLACE TRIGGER investigacion_resultado
BEFORE INSERT ON es_resultado
FOR EACH ROW
DECLARE xestado VARCHAR(2);
BEGIN
  SELECT estado INTO xestado FROM accidentes WHERE incidente= :new.accidente;
  IF xestado <> 'EI' THEN
    RAISE_APPLICATION_ERROR(-20055,'No se puede insertar resultados en un
                            accidente que no esta en investigación');
  END IF;
END;
/
/*Al registrar el primer resultado,  si el porcentaje de este resultado hace que se logre el 100% 
investigado el estado cambia a riesgos investigados.*/
CREATE OR REPLACE TRIGGER estado_riesgos
BEFORE INSERT ON es_resultado
FOR EACH ROW
DECLARE xporce NUMBER;
BEGIN
  SELECT COUNT(*) INTO xporce FROM es_resultado WHERE accidente= :new.accidente;
  IF xporce < 1 AND :new.explica = 100 THEN
    UPDATE accidentes SET estado= 'RI' WHERE incidente= :new.accidente;
  END IF;
END;
/
/*No se pueden definir resultados que hagan que el porcentaje en investigaciones del accidente sea mayor a 100. 
Si no se da porcentaje, se asume que se espera que este resultado cubra el porcentaje restante.*/

CREATE OR REPLACE TRIGGER es_resultadoPORCENT
BEFORE INSERT ON es_resultado
FOR EACH ROW
DECLARE sumaT  NUMBER;
BEGIN
  SELECT distinct investigado INTO sumaT FROM accidentes WHERE :new.accidente = accidentes.incidente;
  IF :new.explica IS NULL THEN 
      :new.explica := 100-sumaT;
  END IF;
  UPDATE accidentes SET investigado = :new.explica + investigado WHERE :new.accidente = accidentes.incidente;
END;
/
CREATE OR REPLACE TRIGGER fecha_accidente_1
BEFORE UPDATE ON accidentes
FOR EACH ROW
BEGIN
  IF :new.investigado= 100 THEN
    UPDATE investigacion SET fecha= TO_DATE(sysdate,'DD-MM-YYYY') WHERE :old.incidente= investigacion.accidente;
  END IF;
  IF  :new.investigado > 100 THEN
    RAISE_APPLICATION_ERROR(-20003,'No se puede tener mas de un 100%');
  END IF;
END;
/
/*El código debe ser el prefijo del nombre y debe estar compuesto únicamente por letras.*/

CREATE OR REPLACE TRIGGER codigo_riesgo
BEFORE INSERT ON riesgo
FOR EACH ROW
BEGIN
  IF SUBSTR(:new.nombre,0,3)<>:new.codigo THEN
  RAISE_APPLICATION_ERROR(-20077,'No se puede ingresar');
  END IF;
END;
/
/*El único dato que se puede modificar es la probabilidad pero únicamente se puede incrementar.*/

CREATE OR REPLACE TRIGGER actualizar_riesgo
BEFORE UPDATE ON riesgo
FOR EACH ROW
BEGIN 
  IF (:new.codigo <> :old.codigo OR :new.nombre <> :old.nombre) OR :new.probabilidad < :old.probabilidad THEN
    RAISE_APPLICATION_ERROR(-20076,'No se puede actualizar si el nombre o el codigo es diferente del que ya tiene
                            ademas, no se puede cambiar la probabilidad por una menor a la que ya tiene');
  END IF;
END;
/
/*No se pueden eliminar riesgos que se han evaluado con más de 80% de probabilidad.*/
ALTER TABLE es_resultado DROP CONSTRAINT FK_resulcodigo;
ALTER TABLE es_resultado ADD CONSTRAINT FK_resulcodigo FOREIGN KEY(codigo)
REFERENCES riesgo(codigo) ON DELETE CASCADE;

CREATE OR REPLACE TRIGGER eliminar_riesgo
BEFORE DELETE ON riesgo
FOR EACH ROW
BEGIN 
  IF :old.probabilidad >= 80 THEN
    RAISE_APPLICATION_ERROR(-20076,'No se pueden eliminar riesgo con mas de 80% de probabilidad');
  END IF;
END;
/
/*se pueden eliminar los incidentes que esten en accidentes*/


ALTER TABLE accidentes DROP CONSTRAINT FK_accincidentes;
ALTER TABLE es_causa DROP CONSTRAINT FK_acincidente;
ALTER TABLE investigacion DROP CONSTRAINT FK_accidente;
ALTER TABLE esta_involucrado DROP CONSTRAINT FK_adminisacc;
ALTER TABLE es_resultado DROP CONSTRAINT FK_resaccidente;
ALTER TABLE es_resultado DROP CONSTRAINT FK_resulcodigo;
ALTER TABLE zonas DROP CONSTRAINT FK_incidentes;
ALTER TABLE condiciones DROP CONSTRAINT FK_incidente_condic;
ALTER TABLE tiene DROP CONSTRAINT FK_numero;


ALTER TABLE accidentes ADD CONSTRAINT FK_accidentes FOREIGN KEY (incidente )
REFERENCES incidentes(numero) ON DELETE CASCADE;

ALTER TABLE es_causa ADD CONSTRAINT FK_accidente_es_causa FOREIGN KEY(aci_incidente)
REFERENCES accidentes(incidente) ON DELETE CASCADE;

ALTER TABLE investigacion ADD CONSTRAINT FK_accidente_investigacion FOREIGN KEY(accidente)
REFERENCES accidentes(incidente) ON DELETE CASCADE;

ALTER TABLE esta_involucrado ADD CONSTRAINT FK_accidente_esta_involucrado FOREIGN KEY(accidente)
REFERENCES accidentes(incidente) ON DELETE CASCADE;

ALTER TABLE es_resultado ADD CONSTRAINT FK_accidente_es_resultado FOREIGN KEY(accidente)
REFERENCES investigacion(accidente) ON DELETE CASCADE;

ALTER TABLE zonas ADD CONSTRAINT FK_incidentes FOREIGN KEY(incidente)
REFERENCES incidentes(numero) ON DELETE CASCADE;

ALTER TABLE condiciones ADD CONSTRAINT FK_incidente_condic FOREIGN KEY(incidentes)
REFERENCES incidentes(numero) ON DELETE CASCADE;

ALTER TABLE tiene ADD CONSTRAINT FK_numero FOREIGN KEY (numero) 
REFERENCES incidentes(numero) ON DELETE CASCADE;

/*no se puede modificar la fecha del incidente*/
CREATE OR REPLACE TRIGGER incidente_fecha
BEFORE UPDATE ON INCIDENTES
FOR EACH ROW
BEGIN
  IF :old.fecha <> :new.fecha THEN
    RAISE_APPLICATION_ERROR(-20045,'No se puede modificar fecha de un incidente');
  END IF;
END;

/*POBLAR*/
INSERT INTO incidentes VALUES (001,TO_DATE('2001/07/12','yyyy/mm/dd'),'caida de un arbol en el campus');
INSERT INTO incidentes VALUES (002,TO_DATE('2005/09/20','yyyy/mm/dd'),'accidente en el edificio de la parte administrativa');
INSERT INTO incidentes VALUES (003,TO_DATE('2016/10/17','yyyy/mm/dd'),'ventas ilegales en el campus');

INSERT INTO zonas VALUES ('zona 1',001);
INSERT INTO zonas VALUES ('zona 1',002);
INSERT INTO zonas VALUES ('zona 4',001);

INSERT INTO accidentes VALUES ('AR',20,
'<Tdetalle>
	<Lugar>Campus</Lugar>
	<Clima>Soleado</Clima>
	<Descargos>
		<Descargo Numero="2001">
			Yo Andres Duran me encontraba realizando ventas ilegales a los
			estudiantes en el campus.
		</Descargo>
		<Descargo Numero="2002">
			Yo Andres Duran me comprometo a dejar de lado este tipo de 
			ventas en la Universidad.
		</Descargo>
	</Descargos>
	<Consecuencias>
		<Consecuencia Numero= "201">
			Llamado de atención.
		</Consecuencia>
		<Consecuencia Numero= "202">
			Estudiante en periodo de prueba.
		</Consecuencia>
	</Consecuencias>
</Tdetalle>',003);
INSERT INTO accidentes VALUES ('RI',50,
'<Tdetalle>
	<Lugar>Campus</Lugar>
	<Clima>Lluvioso</Clima>
	<Descargos>
		<Descargo Numero="1001">
			Yo Andrea Toro me encontraba en el campus cuando un arbol se cayo y sufri algunos golpes.
		</Descargo>
	</Descargos>
	<Consecuencias>
		<Consecuencia Numero= "101">
			Heridos gravemente afectados.
		</Consecuencia>
		<Consecuencia Numero= "102">
			Daños en el coliseo.
		</Consecuencia>
	</Consecuencias>	
</Tdetalle>',001);
INSERT INTO accidentes VALUES ('EI',6,null,002);

INSERT INTO personas VALUES (1001,'Alejo Rocha','Alejo.rocha@mail.escuelaing.edu.co');
INSERT INTO personas VALUES (1002,'Javier Bermudez','javier.bermudez@mail.escuelaing.edu.co');
INSERT INTO personas VALUES (1003,'Andres  Duran','andres.duran@mail.escuelaing.edu.co');
INSERT INTO personas VALUES (1004,'David Rodriguez','david.rodriguez@mail.escuelaing.edu.co');
INSERT INTO personas VALUES (1005,'Maria Casallas','maria.casallas@mail.escuelaing.edu.co');
INSERT INTO personas VALUES (1006,'Andrea Toro','andrea.toro@mail.escuelaing.edu.co');

INSERT INTO administrativo VALUES ('I',1001);
INSERT INTO administrativo VALUES ('I',1004);
INSERT INTO administrativo VALUES ('F',1006);

INSERT INTO profesores VALUES ('Doctorado',1001);
INSERT INTO profesores VALUES ('Maestria',1006);
INSERT INTO profesores VALUES ('Posgrado',1004);

INSERT INTO areas VALUES ('P',1006);
INSERT INTO areas VALUES ('I',1001);
INSERT INTO areas VALUES ('C',1004);

INSERT INTO estudiantes VALUES (1002,9,null);
INSERT INTO estudiantes VALUES (1003,5,1006);
INSERT INTO estudiantes VALUES (1005,1,null);

INSERT INTO causas VALUES ('101','Incidente leve','condiciones ambientales');
INSERT INTO causas VALUES ('102','Estado estudiantil','conflictos laborales');
INSERT INTO causas VALUES ('103','Incidente grave','bienestar universitario');

INSERT INTO tiene VALUES (001,'101');
INSERT INTO tiene VALUES (002,'102');
INSERT INTO tiene VALUES (003,'103');

INSERT INTO condiciones VALUES (4,001);
INSERT INTO condiciones VALUES (5,003);
INSERT INTO condiciones VALUES (3,002);

INSERT INTO es_causa VALUES (001,001);
INSERT INTO es_causa VALUES (002,002);
INSERT INTO es_causa VALUES (003,003);

INSERT INTO riesgo VALUES ('Acc','Accidente profesor',40);
INSERT INTO riesgo VALUES ('Dis','Disturbios',20);
INSERT INTO riesgo VALUES ('Met','Meteorológicos',60);

INSERT INTO esta_involucrado VALUES ('lesion',1001,002);
INSERT INTO esta_involucrado VALUES ('Sancion',1003,003);
INSERT INTO esta_involucrado VALUES ('Un estudiante lesionado',1006,001); 

INSERT INTO investigacion VALUES ('I',null,'URGEN',3,001,1001);
INSERT INTO investigacion VALUES ('P',TO_DATE('2001/07/12','yyyy/mm/dd'),'URG',5,003,1006);
INSERT INTO investigacion VALUES ('C',null,'IMPOR',2,002,1004);

INSERT INTO es_resultado VALUES (002,'Dis',009);


/*BORRAR TABLAS*/
DROP TABLE zonas CASCADE CONSTRAINTS;
DROP TABLE es_causa CASCADE CONSTRAINTS;
DROP TABLE tiene CASCADE CONSTRAINTS;
DROP TABLE investigacion CASCADE CONSTRAINTS;
DROP TABLE es_resultado CASCADE CONSTRAINTS;
DROP TABLE riesgo CASCADE CONSTRAINTS;
DROP TABLE condiciones CASCADE CONSTRAINTS;
DROP TABLE accidentes CASCADE CONSTRAINTS;
DROP TABLE incidentes CASCADE CONSTRAINTS;
DROP TABLE esta_involucrado CASCADE CONSTRAINTS;
DROP TABLE administrativo CASCADE CONSTRAINTS;
DROP TABLE estudiantes CASCADE CONSTRAINTS;
DROP TABLE profesores CASCADE CONSTRAINTS;
DROP TABLE areas CASCADE CONSTRAINTS;
DROP TABLE personas CASCADE CONSTRAINTS;
DROP TABLE causas CASCADE CONSTRAINTS;