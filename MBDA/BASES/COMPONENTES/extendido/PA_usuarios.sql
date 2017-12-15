CREATE OR REPLACE PACKAGE PA_USUARIO IS 
  /*COMENTARIOS*/
  PROCEDURE AD_COMEN (xID_COMENTARIO IN NUMBER, xEXPLICACION  IN VARCHAR,xFECHA IN DATE,xGRUPO IN NUMBER,xUSUARIO  IN VARCHAR,xPROBLEMA  IN  NUMBER,xID_COMENTARIO_RESPUESTA IN NUMBER);
  FUNCTION CO_COMEN  RETURN SYS_REFCURSOR;
  /*problema*/
  PROCEDURE AD_PRU (xID_PRUEBA  IN NUMBER, xINPUT_CASE  IN VARCHAR, xOUTPUT_CASE  IN VARCHAR,xPROPOSITO  IN VARCHAR,xID_PROBLEMA IN NUMBER);
  FUNCTION CO_PRU  RETURN SYS_REFCURSOR;
  
  /*PRUEBA*/
  PROCEDURE AD_PRO  (xID_PROBLEMA  IN NUMBER,xNOMBRE  IN VARCHAR,xPDF IN  VARCHAR,xTIEMPO IN NUMBER,xMEMORIA  IN VARCHAR,xCREADOR IN VARCHAR,xTEMA  IN VARCHAR);
  FUNCTION CO_PRO RETURN SYS_REFCURSOR;
  /*CONSULTAS*/
  /*1*/
  FUNCTION CO_EQUI (xNOMBRE IN VARCHAR) RETURN SYS_REFCURSOR; 
  /*2*/
  FUNCTION CO_PRO_CO2 RETURN SYS_REFCURSOR;
  /*3*/
  FUNCTION CO_GRUPO  RETURN SYS_REFCURSOR;
  /*4*/
  FUNCTION CO_COM_CO4(xTest IN VARCHAR) RETURN SYS_REFCURSOR;
  /*5*/
  FUNCTION CO_COM_CO5(xTest IN NUMBER) RETURN SYS_REFCURSOR;
  /*6*/
  FUNCTION CO_USUA_CO6 RETURN SYS_REFCURSOR;
  /*7*/
   FUNCTION CO_USUA_CO7 RETURN SYS_REFCURSOR;
END PA_USUARIO;



CREATE OR REPLACE PACKAGE BODY PA_USUARIO IS

	PROCEDURE AD_COMEN (xID_COMENTARIO IN NUMBER, xEXPLICACION  IN VARCHAR,xFECHA IN DATE,xGRUPO IN NUMBER,xUSUARIO  IN VARCHAR,xPROBLEMA  IN  NUMBER,xID_COMENTARIO_RESPUESTA IN NUMBER) IS
		BEGIN
			PC_COMENTARIOS.AD_COMENTARIOS(xID_COMENTARIO,xEXPLICACION,xFECHA,xGRUPO,xUSUARIO,xPROBLEMA,xID_COMENTARIO_RESPUESTA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en comentarios.');
	END;
	
	FUNCTION CO_COMEN  RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
			CO_CO :=PC_COMENTARIOS.CO_COMENTARIOS;
		RETURN CO_CO;
	END;
	
	
	PROCEDURE AD_PRU (xID_PRUEBA  IN NUMBER, xINPUT_CASE  IN VARCHAR, xOUTPUT_CASE  IN VARCHAR,xPROPOSITO  IN VARCHAR,xID_PROBLEMA IN NUMBER) IS
		BEGIN
			PC_PROBLEMA.AD_PRUEBA(xID_PRUEBA, xINPUT_CASE , xOUTPUT_CASE,xPROPOSITO,xID_PROBLEMA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en PRUEBAS.');
		END;
	
	
	
	FUNCTION CO_PRU  RETURN SYS_REFCURSOR IS CO_PRUE SYS_REFCURSOR;
		BEGIN
			CO_PRUE :=PC_PROBLEMA.CO_PRUEBA;
		RETURN CO_PRUE;
	END;
	
	PROCEDURE AD_PRO  (xID_PROBLEMA  IN NUMBER,xNOMBRE  IN VARCHAR,xPDF IN  VARCHAR,xTIEMPO IN NUMBER,xMEMORIA  IN VARCHAR,xCREADOR IN VARCHAR,xTEMA  IN VARCHAR) IS
		BEGIN
			PC_PROBLEMA.AD_PROBLEMA(xID_PROBLEMA,xNOMBRE  ,xPDF ,xTIEMPO ,xMEMORIA ,xCREADOR ,xTEMA );
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en PROBLEMAS.');
		END;
		
	FUNCTION CO_PRO  RETURN SYS_REFCURSOR IS CO_PROB SYS_REFCURSOR;
		BEGIN
			CO_PROB :=PC_PROBLEMA.CO_PROBLEMA;
		RETURN CO_PROB;
	END;	
	
	
	
	FUNCTION CO_PRO_CO2  RETURN SYS_REFCURSOR IS CO_PROB_CO2 SYS_REFCURSOR;
		BEGIN
			CO_PROB_CO2 :=PC_PROBLEMA.CO_CO2;
		RETURN CO_PROB_CO2;
	END;
	
	
	FUNCTION CO_COM_CO4(xTest IN VARCHAR)  RETURN SYS_REFCURSOR IS CO_COME_CO4 SYS_REFCURSOR;
		BEGIN
			CO_COME_CO4 :=PC_COMENTARIOS.CO_CO4(xTest);
		RETURN CO_COME_CO4;
	END;
	
	
	FUNCTION CO_COM_CO5(xTest IN NUMBER)  RETURN SYS_REFCURSOR IS CO_COME_CO5 SYS_REFCURSOR;
		BEGIN
			CO_COME_CO5 :=PC_COMENTARIOS.CO_CO5(xTest);
		RETURN CO_COME_CO5;
	END;
	
	
	
	FUNCTION CO_USUA_CO6  RETURN SYS_REFCURSOR IS CO_PROB1 SYS_REFCURSOR;
		BEGIN
			CO_PROB1 :=PC_USUARIO.CO_CO6;
		RETURN CO_PROB1;
	END;
	
	
	FUNCTION CO_USUA_CO7  RETURN SYS_REFCURSOR IS CO_PROB2 SYS_REFCURSOR;
		BEGIN
			CO_PROB2 :=PC_USUARIO.CO_CO7;
		RETURN CO_PROB2;
	END;
	
	FUNCTION CO_EQUI (xNOMBRE IN VARCHAR) RETURN SYS_REFCURSOR IS CON_EQUI SYS_REFCURSOR;
		BEGIN
			CON_EQUI := PC_EQUIPO.CO_EQUI(xNOMBRE);
		RETURN CON_EQUI;
	END;
	
	FUNCTION CO_GRUPO  RETURN SYS_REFCURSOR IS CON_GRUPO SYS_REFCURSOR;
		BEGIN	
			CON_GRUPO:= PC_GRUPO.CO_GRUPO;
		RETURN CON_GRUPO;
	END;
    
END PA_USUARIO;