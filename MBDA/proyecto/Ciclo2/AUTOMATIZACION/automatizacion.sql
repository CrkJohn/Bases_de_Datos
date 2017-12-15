/*TRiGGER*/
 declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   inscripciones;

    execute immediate 'Create sequence seq_inscripcion
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   envios;

    execute immediate 'Create sequence seq_envios
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   Asociaciones;

    execute immediate 'Create sequence seq_Asociaciones
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   Veredictos;

    execute immediate 'Create sequence seq_Veredictos
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/
CREATE OR REPLACE TRIGGER AUTO_SCOREBOARD
AFTER UPDATE ON EVENTOS
FOR EACH ROW
DECLARE fecha_F date;
BEGIN
    IF :new.fechafin IS not NULL and :new.clase = 'Maraton' THEN
		INSERT INTO SCOREBOARD SELECT 0,equipo,evento FROM inscripciones WHERE evento = :new.id_evento;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER CUPOS_COSTO
BEFORE INSERT ON INSCRIPCIONES
FOR EACH ROW
DECLARE fecha_F date;
		cost number;
BEGIN
	SELECT FECHAFIN INTO fecha_F FROM EVENTOS WHERE :new.evento = id_evento;	
	SELECT costo INTO cost FROM EVENTOS WHERE :new.evento = id_evento;
	INSERT INTO ASISTE VALUES(:new.equipo,:new.evento);
    IF fecha_F IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20000,'No hay cupos disponibles en el evento');
	ELSIF cost <> :new.valor THEN
		   RAISE_APPLICATION_ERROR(-20000,'El valor pagado no es el valor de la inscripcion');
    ELSE
        UPDATE EVENTOS SET capacidad_maxima = capacidad_maxima + 1 WHERE id_evento  = :new.evento;
    END IF;
END;
/
create or replace TRIGGER CIERRE_EVENTO
BEFORE UPDATE ON EVENTOS
FOR EACH ROW
BEGIN
    IF :new.CANTIDAD_EQUIPOS = :new.capacidad_maxima THEN
        :new.fechafin :=  sysdate;
    END IF;
END;
/
CREATE OR REPLACE TRIGGER ELI_ASOACIOCIONES
BEFORE DELETE ON ASOCIACIONES
FOR EACH ROW
DECLARE CONT NUMBER;
BEGIN
	SELECT COUNT(*) INTO CONT FROM REALIZAN R WHERE :old.id_asociacion = R.id_asociacion;
	IF (CONT>0) THEN
		RAISE_APPLICATION_ERROR(-20000,'No se puede eliminar esta asociacion por que  ha generardo eventos');
	END IF;
END;
/
CREATE OR REPLACE TRIGGER ELI_EVENTOS
BEFORE DELETE ON EVENTOS
FOR EACH ROW
DECLARE CONT NUMBER;
BEGIN
	SELECT COUNT(*) INTO CONT FROM INSCRIPCIONES I WHERE :old.id_evento = I.evento;
	IF (CONT>:old.CANTIDAD_EQUIPOS/2) THEN
		RAISE_APPLICATION_ERROR(-20000,'No se puede eliminar este evento.');
	END IF;
END;
/

CREATE OR REPLACE TRIGGER ENVIOS_ESTA
BEFORE INSERT  ON ENVIOS
FOR EACH ROW
DECLARE CONT NUMBER;
BEGIN
	SELECT COUNT(*) INTO CONT FROM INSCRIPCIONES I WHERE :new.evento = I.evento and I.equipo = :new.equipo;
	IF (CONT=0) THEN
		RAISE_APPLICATION_ERROR(-20000,'No se puede el insertar por que no esta en el evento.');
	END IF;
END;

/
CREATE OR REPLACE TRIGGER Set_problema_EX
BEFORE INSERT  ON ENVIOS
FOR EACH ROW
DECLARE CONT NUMBER;
BEGIN
	SELECT COUNT(*) INTO CONT FROM TIENE T WHERE :new.evento = T.id_evento and :new.problema = T.id_problema;
	IF (CONT=0) THEN
		RAISE_APPLICATION_ERROR(-20000,'No se puede generar el envio ya que este ejercicio  no se encuentra en el evento que esta participando.');
	END IF;
END;
/
CREATE OR REPLACE TRIGGER AUTO_VEREDICTOS
  AFTER  INSERT  ON ENVIOS
  FOR EACH ROW
  DECLARE CONT NUMBER;
		  REST CHAR;
  BEGIN
    INSERT INTO VEREDICTOS(id_veredicto,tiempo,envio,problema,lenguage,usuario,resultado) VALUES(seq_Veredictos.nextval,null,:new.id_envio,:new.problema,:new.lenguage,null,'r');
	SELECT RESULTADO INTO REST FROM (SELECT RESULTADO FROM VEREDICTOS  ORDER BY ID_veredicto DESC) WHERE ROWNUM<=1;
	IF REST = 'A' THEN
		UPDATE SCOREBOARD S SET PROBLEMAS_RESUELTOS = PROBLEMAS_RESUELTOS + 1 WHERE :NEW.EQUIPO = S.EQUIPO AND :NEW.EVENTO =S.ID_EVENTO;
	END IF;
  END;
/
CREATE OR REPLACE TRIGGER RESULTADO_PROBLEMA
BEFORE INSERT  ON VEREDICTOS
FOR EACH ROW
DECLARE REST CHAR;
BEGIN
	SELECT SUBSTR('AWPTCOR', TRUNC(DBMS_RANDOM.VALUE(0,8)),1) INTO REST FROM DUAL;
	IF REST = 'A' THEN
		:new.tiempo :=  TRUNC(DBMS_RANDOM.VALUE(0,3));
	END IF;
  :new.resultado := REST;
END;
/
CREATE OR REPLACE TRIGGER XOR_VER
BEFORE INSERT  ON VEREDICTOS
FOR EACH ROW
DECLARE REST CHAR;
BEGIN
	IF :NEW.ENVIO IS NULL AND :NEW.USUARIO IS NULL THEN
		RAISE_APPLICATION_ERROR(-20000,'Tiene que tener remitente el problema');
	END IF;
END;
