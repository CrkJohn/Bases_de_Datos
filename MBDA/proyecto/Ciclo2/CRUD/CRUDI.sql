CREATE OR REPLACE PACKAGE BODY PC_ASOCIACION IS
	PROCEDURE AD_Asociacion (xnombre IN VARCHAR , xacreditacion IN NUMBER, xproposito IN VARCHAR,xlugar IN NUMBER) IS
		BEGIN
			INSERT INTO ASOCIACIONES (id_asociacion,nombre,acreditacion,proposito,lugar) VALUES (SEQ_ASOCIACIONES.nextval,xnombre,xacreditacion,xproposito,xlugar);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR (-20001,'No se puede insertar en asociaciones');
	END;
	
	PROCEDURE MOD_Asociacion (xID_Asociacion IN NUMBER,xacreditacion IN NUMBER,xlugar IN NUMBER) IS
		BEGIN
			UPDATE ASOCIACIONES SET acreditacion= xacreditacion, lugar= xlugar WHERE id_asociacion= xID_Asociacion;
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20002,'NO SE PUEDE MODIFICAR ASOCIACION');
	END;
	
	PROCEDURE EL_Asociacion (xID_Asociacion IN NUMBER) IS
		BEGIN 
			DELETE FROM ASOCIACIONES WHERE id_asociacion= xID_Asociacion;
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20002,'NO SE PUEDE ELIMINAR ASOCIACION');
	END;
	
	PROCEDURE AD_REALIZAN (xid_evento IN NUMBER, xid_asociacion IN NUMBER) IS
		BEGIN
			INSERT INTO REALIZAN (id_evento,id_asociacion) VALUES (xid_evento,xid_asociacion);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20022,'NO SE PUEDE INSERTAR EN REALIZAN');
	END;

	FUNCTION MAYOR_INGRESO RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
		OPEN CO_CO  FOR
			SELECT VALOR, E.NOMBRE FROM 
				(SELECT SUM(VALOR) AS VALOR, I.EVENTO AS EVE 
					FROM INSCRIPCIONES I   GROUP BY I.EVENTO)  CON, EVENTOS E 
					WHERE CON.EVE = E.ID_EVENTO ORDER BY VALOR DESC;
		RETURN CO_CO;
	END;
END PC_ASOCIACION;
/
CREATE OR REPLACE PACKAGE BODY PC_ENVIOS IS
	PROCEDURE AD_ENVIOS (xproblema IN NUMBER, xequipo IN NUMBER, xevento IN NUMBER, xlenguage IN VARCHAR) IS
		BEGIN 
			INSERT INTO ENVIOS (id_envio,problema,equipo,evento,lenguage) VALUES (SEQ_ENVIOS.nextval,xproblema,xequipo,xevento,xlenguage);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20023,'NO SE PUEDE INSERTAR EN ENVIOS');
	END;
	
	PROCEDURE AD_VEREDICTO (xtiempo IN NUMBER, xlenguage IN VARCHAR, xresultado IN VARCHAR, xenvio IN NUMBER, xproblema IN NUMBER, xusuario IN VARCHAR) IS
		BEGIN
			INSERT INTO VEREDICTOS (id_veredicto,tiempo,lenguage,resultado,envio,problema,usuario) VALUES (SEQ_VEREDICTOS.nextval,xtiempo,xlenguage,xresultado,xenvio,xproblema,xusuario);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20025,'NO SE PUEDE INSERTAR EN VEREDICTOS');
	END;
END PC_ENVIOS;
/
CREATE OR REPLACE PACKAGE BODY PC_EVENTO IS
	PROCEDURE AD_EVENTO (xid_evento IN NUMBER,xnombre IN VARCHAR, xnivel IN VARCHAR, xfecha IN DATE, xfechafin IN DATE,xcantidad_equipos IN NUMBER, xclase IN VARCHAR, xcosto IN NUMBER, xlugar IN NUMBER, xcapacidad_maxima IN NUMBER) IS
		BEGIN
			INSERT INTO EVENTOS (id_evento,nombre,nivel,fecha,fechaFin,cantidad_equipos,clase,costo,lugar,capacidad_maxima) VALUES (xid_evento,xnombre,xnivel,xfecha,xfechafin,xcantidad_equipos,xclase,xcosto,xlugar,xcapacidad_maxima);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20026,'NO SE PUEDE INSERTAR EN EVENTOS');
	END;
	
	PROCEDURE MOD_EVENTO (xid_evento IN NUMBER, xfechafin IN DATE, xcantidad_equipos IN NUMBER) IS
		BEGIN
			UPDATE EVENTOS SET fechaFin= xfechafin, cantidad_equipos= xcantidad_equipos WHERE id_evento= xid_evento;
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20035,'NO SE PUEDE MODIFICAR EN EVENTOS');
	END;
	
	PROCEDURE EL_EVENTO (xid_evento IN NUMBER) IS
		BEGIN
			DELETE FROM EVENTOS WHERE id_evento= xid_evento;
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20036,'NO SE PUEDE ELIMINAR EN EVENTOS');
	END;
	
	PROCEDURE AD_INSCRIPCION (xvalor IN NUMBER, xequipo IN NUMBER, xevento IN NUMBER) IS
		BEGIN
			INSERT INTO INSCRIPCIONES (id_inscripcion,valor,equipo,evento,fecha) VALUES (SEQ_INSCRIPCION.nextval,xvalor,xequipo,xevento,sysdate);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20055,'NO SE PUEDE INSERTAR EN INSCRIPCIONES');
	END;
	
	PROCEDURE EL_INSCRIPCION(xid_inscripcion IN NUMBER) IS
		BEGIN
			DELETE FROM INSCRIPCIONES WHERE id_inscripcion= xid_inscripcion;
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20075,'NO SE PUEDE ELIMINAR EN INSCRIPCIONES');
	END;
	
	PROCEDURE AD_ASISTE (xequipo IN NUMBER, xevento IN NUMBER) IS
		BEGIN 
			INSERT INTO ASISTE (equipo,evento) VALUES (xequipo,xevento);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20175,'NO SE PUEDE INSERTAR EN ASISTE');
	END;
	
	PROCEDURE AD_TIENE (xproblema IN NUMBER, xevento IN NUMBER) IS
		BEGIN
			INSERT INTO TIENE (id_problema,id_evento) VALUES (xproblema,xevento);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20275,'NO SE PUEDE INSERTAR EN TIENE');
	END;
	
	PROCEDURE MOD_SCOREBOARD (xproblemas_resueltos IN NUMBER, xequipo IN NUMBER, xid_evento IN NUMBER) IS
		BEGIN
			UPDATE ScoreBoard SET problemas_resueltos= xproblemas_resueltos WHERE equipo= xequipo and id_evento= xid_evento;
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20255,'NO SE PUEDE ACTUALIZAR EN SCOREBOARD');
	END;

	FUNCTION MEJOR_EQUIPO RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
		OPEN CO_CO  FOR
			SELECT  E.NOMBRE,EV.NOMBRE 
			FROM SCOREBOARD S ,EQUIPOS E , EVENTOS EV  
			WHERE S.EQUIPO = E.ID_EQUIPO AND S.ID_EVENTO =  EV.ID_EVENTO 
			ORDER BY PROBLEMAS_RESUELTOS DESC,EV.NOMBRE;
		RETURN CO_CO;
	END;

	FUNCTION RESULTADO_SCORE (xid_evento IN NUMBER) RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
		OPEN CO_CO  FOR
			SELECT S.PROBLEMAS_RESUELTOS, E.NOMBRE , EV.NOMBRE 
			FROM SCOREBOARD S, EQUIPOS E, EVENTOS EV 
			WHERE S.ID_EVENTO = xid_evento AND S.EQUIPO = E.ID_EQUIPO AND EV.ID_EVENTO = S.ID_EVENTO;
		RETURN CO_CO;
	END;

	FUNCTION CONFERENCIAS RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
		OPEN CO_CO  FOR
			SELECT * FROM EVENTOS E WHERE E.CLASE = 'Conferencia';  
		RETURN CO_CO;
	END;

	FUNCTION PREPARACION RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
		OPEN CO_CO  FOR
			SELECT * FROM EVENTOS E 
			WHERE E.Nivel = 'Dificil' and FECHAFIN IS NULL;  
		RETURN CO_CO;
	END;

	FUNCTION FACT_ECONO RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
		OPEN CO_CO  FOR
			SELECT * FROM EVENTOS E 
			WHERE FECHAFIN IS NULL ORDER BY COSTO ASC;
		RETURN CO_CO;
	END;

	FUNCTION PROBLEMAS (xid_evento IN NUMBER) RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
		OPEN CO_CO  FOR
			SELECT  P.NOMBRE,P.ID_PROBLEMA
			FROM EVENTOS E , TIENE T , PROBLEMAS P 
			WHERE E.ID_EVENTO  = T.ID_EVENTO AND T.ID_PROBLEMA  = P.ID_PROBLEMA AND E.ID_EVENTO = xid_evento ;
		RETURN CO_CO;
	END;

END PC_EVENTO;
