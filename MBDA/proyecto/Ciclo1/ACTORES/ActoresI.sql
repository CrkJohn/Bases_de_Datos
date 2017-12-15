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

	PROCEDURE AD__GRUPO (xNOMBRE IN VARCHAR, xCREADOR IN VARCHAR) IS
		BEGIN
			PC_RGRUPO.AD_GRUPO (xNOMBRE, xCREADOR);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en GRUPO.');
		END;

	PROCEDURE AD__TIENE (xID_GRUPO IN NUMBER, xID_TEMA IN VARCHAR) IS
		BEGIN
			PC_RGRUPO.AD_TIENE (xID_GRUPO, xID_TEMA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en GRUPO TIENE TEMA.');
		END;

	PROCEDURE AD__PERTENECE (xID_USUARIO IN VARCHAR, xID_GRUPO IN NUMBER) IS
		BEGIN
			PC_RGRUPO.AD_PERTENECE (xID_USUARIO, xID_GRUPO);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en PERTENECE A GRUPO.');
		END;
	
	PROCEDURE EL_PERTENECE (xID_USUARIO IN VARCHAR, xID_GRUPO IN NUMBER) IS
		BEGIN
			PC_GRUPO.EL_PERTENECE(xID_USUARIO,xID_GRUPO);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20632,'No se puede eliminar en PERTENECE A GRUPO.');
		END;

	FUNCTION CO__GRUPO RETURN SYS_REFCURSOR IS CO_GR SYS_REFCURSOR;
		BEGIN
			CO_GR := PC_GRUPO.CO_GRUPO;
		RETURN CO_GR;
	END;

	FUNCTION CONS__GRUPO RETURN SYS_REFCURSOR IS CONS_GR SYS_REFCURSOR ;
		BEGIN
			CONS_GR := PC_GRUPO.CONS_GRUPO;
		RETURN CONS_GR;
	END;

	FUNCTION CO__TIENE RETURN SYS_REFCURSOR IS CO_TIE SYS_REFCURSOR;
		BEGIN
			CO_TIE := PC_GRUPO.CO_TIENE;
		RETURN CO_TIE;
	END;

	FUNCTION CO__PERTENECE RETURN SYS_REFCURSOR IS CO_PER SYS_REFCURSOR;
		BEGIN
			CO_PER := PC_GRUPO.CO_PERTENECE;
		RETURN CO_PER;
	END;

	/*EQUIPO*/
	
	PROCEDURE AD_EQUIPO (xNOMBRE IN VARCHAR,xLUGAR IN NUMBER) IS
		BEGIN
			PC_EQUIPO.AD_EQUIPO (xNOMBRE,xLUGAR);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20132,'No se puede insertar en EQUIPO.');
		END;

	PROCEDURE MOD_EQUIPO (xID_EQUIPO IN NUMBER) IS
		BEGIN
			PC_EQUIPO.MOD_EQUIPO (xID_EQUIPO);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20133,'No se puede modificar en EQUIPO.');
		END;
	
	PROCEDURE AD_PERTENECE_EQU (xID_USUARIO IN VARCHAR,xID_EQUIPO IN NUMBER) IS
		BEGIN
			PC_EQUIPO.AD_PERTENECE_EQU (xID_USUARIO,xID_EQUIPO);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20143,'No se puede insertar en PERTENECE A EQUIPO.');
		END;	

	FUNCTION CONS_EQUI RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
			CO_CO:= PC_EQUIPO.CONS_EQUI;
		RETURN CO_CO;
	END;

	FUNCTION CON_PERTENECE RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
		BEGIN
			CO_CO:= PC_EQUIPO.CON_PERTENECE;
		RETURN CO_CO;
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
/

CREATE OR REPLACE PACKAGE BODY PA_ASOCIACION IS
	
	
	PROCEDURE AD_ASOCIACION_USUARIO (xUSERNAME IN  VARCHAR,xNOMBRE IN  VARCHAR,xCORREO IN  VARCHAR,xFECHA  IN DATE,xTELEFONO IN  NUMBER,xOCUPACION IN  VARCHAR,xESTADO  IN VARCHAR,xLUGAR IN NUMBER,xPerfil IN XMLTYPE) IS
		BEGIN
			PC_USUARIO.AD_USUARIO(xUSERNAME,xNOMBRE,xCORREO,xFECHA,xTELEFONO,xOCUPACION,xESTADO,xLUGAR,xPerfil);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en USUARIOS.');
	END;
			
	PROCEDURE MOD_ASOCIACION_USUARIO (xUSERNAME IN  VARCHAR,xNOMBRE IN  VARCHAR,xCORREO IN  VARCHAR,xTELEFONO IN  NUMBER,xOCUPACION IN  VARCHAR,xESTADO  IN VARCHAR,xLUGAR IN NUMBER,xPerfil IN XMLTYPE) IS
		BEGIN
			PC_USUARIO.MOD_USUARIO(xUSERNAME,xNOMBRE,xCORREO,xTELEFONO,xOCUPACION,xESTADO,xLUGAR,xPerfil);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede modificar en USUARIOS.');
	END;
	
	
	PROCEDURE ELI_ASOCIACION_USUARIO (xUSERNAME IN  VARCHAR) IS
		BEGIN
			PC_USUARIO.ELI_USUARIO(xUSERNAME);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en USUARIOS.');
	END;

	
	FUNCTION CO_ASOCIACION_USUARIOS RETURN SYS_REFCURSOR IS CO_US SYS_REFCURSOR;
		BEGIN
			CO_US := PC_USUARIO.CO_USUARIOS;
		RETURN CO_US;
	END;


	PROCEDURE AD_ASOCIACION_PROBLEMA  (xID_PROBLEMA  IN NUMBER,xNOMBRE  IN VARCHAR,xPDF IN  VARCHAR,xTIEMPO IN NUMBER,xMEMORIA  IN VARCHAR,xCREADOR IN VARCHAR,xTEMA  IN VARCHAR) IS
		BEGIN
			PC_PROBLEMA.AD_PROBLEMA(xID_PROBLEMA,xNOMBRE,xPDF,xTIEMPO,xMEMORIA,xCREADOR,xTEMA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en PROBLEMAS.');
	END;
	
	PROCEDURE MOD_ASOCIACION_PROBLEMA (xID_PROBLEMA  IN NUMBER,xTIEMPO IN NUMBER,xMEMORIA  IN VARCHAR,xTEMA  IN VARCHAR) IS
		BEGIN
			PC_PROBLEMA.MOD_PROBLEMA (xID_PROBLEMA,xTIEMPO,xMEMORIA,xTEMA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede modificar en PROBLEMAS.');
	END;
	
	PROCEDURE ELI_ASOCIACION_PROBLEMA (xID_PROBLEMA  IN NUMBER) IS
		BEGIN
			PC_PROBLEMA.ELI_PROBLEMA (xID_PROBLEMA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en PROBLEMAS.');
	END;

	FUNCTION CO_ASOCIACION_PROBLEMA  RETURN SYS_REFCURSOR IS CO_PR SYS_REFCURSOR;
		BEGIN
			CO_PR := PC_PROBLEMA.CO_PROBLEMA;
		RETURN CO_PR;
	END;

	
	PROCEDURE AD_ASOCIACION_PRUEBA (xID_PRUEBA  IN NUMBER, xINPUT_CASE  IN VARCHAR, xOUTPUT_CASE  IN VARCHAR,xPROPOSITO  IN VARCHAR,xID_PROBLEMA IN NUMBER) IS
		BEGIN
			PC_PROBLEMA.AD_PRUEBA(xID_PRUEBA, xINPUT_CASE, xOUTPUT_CASE,xPROPOSITO,xID_PROBLEMA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede insertar en PRUEBAS.');
	END;
	
	PROCEDURE MOD_ASOCIACION_PRUEBA (xID_PRUEBA  IN NUMBER, xINPUT_CASE  IN VARCHAR, xOUTPUT_CASE  IN VARCHAR,xPROPOSITO  IN VARCHAR,xID_PROBLEMA IN NUMBER) IS
		BEGIN
			PC_PROBLEMA.MOD_PRUEBA(xID_PRUEBA, xINPUT_CASE, xOUTPUT_CASE,xPROPOSITO,xID_PROBLEMA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede modificar en PRUEBAS.');
	END;
	
	PROCEDURE ELI_ASOCIACION_PRUEBA (xID_PRUEBA IN NUMBER) IS
		BEGIN
			PC_PROBLEMA.ELI_PRUEBA(xID_PRUEBA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en PRUEBAS.');
	END;
	
	FUNCTION CO_ASOCIACION_PRUEBA  RETURN SYS_REFCURSOR IS CO_PR SYS_REFCURSOR;
		BEGIN
			CO_PR := PC_PROBLEMA.CO_PRUEBA;
		RETURN CO_PR;
	END;



	
	PROCEDURE AD_ASOCIACION_GRUPO (xNOMBRE IN VARCHAR, xCREADOR IN VARCHAR) IS
		BEGIN
			PC_GRUPO.AD_GRUPO (xNOMBRE, xCREADOR);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en PRUEBAS.');
	END;
	
			
	PROCEDURE MOD_ASOCIACION_GRUPO (xID_GRUPO IN NUMBER, xNOMBRE IN VARCHAR) IS
		BEGIN
			PC_GRUPO.MOD_GRUPO (xID_GRUPO,xNOMBRE);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en PRUEBAS.');
	END;
	

	PROCEDURE AD_ASOCIACION_TIENE (xID_GRUPO IN NUMBER, xID_TEMA IN VARCHAR) IS
		BEGIN
			PC_GRUPO.AD_TIENE (xID_GRUPO,xID_TEMA);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en PRUEBAS.');
	END;
	
		
	
	PROCEDURE AD_ASOCIACION_PERTENECE (xID_USUARIO IN VARCHAR, xID_GRUPO IN NUMBER) IS
		BEGIN
				PC_GRUPO.AD_PERTENECE (xID_USUARIO,xID_GRUPO);
			COMMIT;
			EXCEPTION
			WHEN OTHERS THEN
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en PRUEBAS.');
		END;
	
			
	
	PROCEDURE EL_ASOCIACION_PERTENECE (xID_USUARIO IN VARCHAR, xID_GRUPO IN NUMBER) IS
		BEGIN
			PC_GRUPO.EL_PERTENECE (xID_USUARIO, xID_GRUPO);
			COMMIT;
			EXCEPTION
			WHEN OTHERS THEN
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en PRUEBAS.');
		END;		
			
	
	FUNCTION CO_ASOCIACION_GRUPO RETURN SYS_REFCURSOR IS CO_PR SYS_REFCURSOR;
		BEGIN
			CO_PR := PC_GRUPO.CO_GRUPO;
		RETURN CO_PR;
	END;
	
	
	FUNCTION CONS_ASOCIOACION_GRUPO RETURN SYS_REFCURSOR IS CO_PR SYS_REFCURSOR;
		BEGIN
			CO_PR := PC_GRUPO.CONS_GRUPO;
		RETURN CO_PR;
	END;


	FUNCTION CO_ASOCIOACION_TIENE RETURN SYS_REFCURSOR IS CO_PR SYS_REFCURSOR;
			BEGIN
				CO_PR := PC_GRUPO.CO_TIENE;
			RETURN CO_PR;
		END;

	FUNCTION CO_ASOCIOACION_PERTENECE RETURN SYS_REFCURSOR IS CO_PR SYS_REFCURSOR;
			BEGIN
				CO_PR := PC_GRUPO.CO_PERTENECE;
			RETURN CO_PR;
	END;

	PROCEDURE AD_ASOCIACION_TEMA (xID_TEMA IN VARCHAR, xNOMBRE IN VARCHAR, xPADRE IN VARCHAR) IS
		BEGIN
			PC_TEMA.AD_TEMA(xID_TEMA, xNOMBRE, xPADRE);
		COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20032,'No se puede eliminar en PRUEBAS.');
	END;
	
	
	FUNCTION  CO_ASOCIACION_TEMA RETURN SYS_REFCURSOR IS CO_PR SYS_REFCURSOR;
			BEGIN
				CO_PR := PC_TEMA.CO_TEMA;
			RETURN CO_PR;
	END;
	
END PA_ASOCIACION;
