/*Si el estado del usuario cambia a pasivo, se tiene que verificar que no pertenezca a un equipo activo
si es asi, no le dejar√° cambiar el estado*/
CREATE OR REPLACE TRIGGER ESTADO_USUARIO
BEFORE UPDATE ON USUARIOS
FOR EACH ROW
DECLARE CONTADOR NUMBER;
BEGIN
  SELECT COUNT(*) INTO CONTADOR FROM PERTENECE_EQUIPO, EQUIPOS 
  WHERE PERTENECE_EQUIPO.ID_USUARIO = :OLD.USERNAME AND PERTENECE_EQUIPO.ID_EQUIPO= EQUIPOS.ID_EQUIPO
  AND FECHA_FIN IS NULL;
  IF CONTADOR > 0 AND :NEW.ESTADO = 'Pasivo' and :OLD.ESTADO = 'Activo' THEN 
    RAISE_APPLICATION_ERROR(-20001,'No se puede cambiar a estado pasivo, porque sigue perteneciendo a un equipo');
  END IF;  
END;
/
/*Si se quiere insertar un usuario a pertenece_equipo, este debe tener un estado activo.
de no ser asi se manda una excepci√≥n*/
CREATE OR REPLACE TRIGGER PERTENECE_EQUIPO
BEFORE INSERT ON PERTENECE_EQUIPO
FOR EACH ROW
DECLARE ESTADO_ VARCHAR(6);
BEGIN
  SELECT ESTADO INTO ESTADO_ FROM USUARIOS WHERE USERNAME = :NEW.ID_USUARIO;
  IF ESTADO_ = 'Pasivo' THEN
    RAISE_APPLICATION_ERROR(-20002,'Un usuario que es pasivo no puede pertenecer a un equipo que este activo');
  END IF;
END;
/
/*Solo se pueden ingresar usuarios con una fecha menor a la actual, de lo contrario se manda una excepci√≥n*/
CREATE OR REPLACE TRIGGER FECHA_USUARIO
BEFORE INSERT ON USUARIOS
FOR EACH ROW
DECLARE FECHA_ DATE;
BEGIN
  SELECT SYSDATE INTO FECHA_ FROM DUAL;
  IF :NEW.FECHA > FECHA_ THEN
    RAISE_APPLICATION_ERROR(-20003,'No se puede ingresar un usuario con una fecha mayor a la actual');
  END IF;
END;
/
/*Si se intenta insertar un equipo con un mismo nombre, el antiguo se le coloca fecha_fin*/
CREATE OR REPLACE TRIGGER Nombre_equipos
BEFORE INSERT ON EQUIPOS 
FOR EACH ROW
DECLARE CONT NUMBER;
ID_E NUMBER;
BEGIN 
    SELECT COUNT(*) INTO CONT FROM EQUIPOS WHERE :new.nombre=nombre;
    IF CONT>=1 THEN
        SELECT ID_EQUIPO INTO ID_E FROM (SELECT ID_EQUIPO FROM EQUIPOS WHERE :new.nombre=nombre ORDER BY FECHA_INICIO DESC) WHERE ROWNUM<=1;
        UPDATE EQUIPOS
        SET FECHA_FIN = SYSDATE 
        WHERE ID_E=ID_EQUIPO;
    END IF;
END;
/
/*POR LA JERARQUIA SOLO PUEDE HABER UN PADRE NULO*/
CREATE OR REPLACE TRIGGER PADRE_TEMA
BEFORE INSERT  ON TEMAS
FOR EACH ROW
DECLARE
  CONTADOR NUMBER;
BEGIN
  SELECT COUNT(*) INTO CONTADOR FROM TEMAS WHERE PADRE IS NULL;
  IF  CONTADOR = 1 AND :NEW.PADRE IS NULL THEN
  RAISE_APPLICATION_ERROR(-20000,'¬°No  se puede ingresar el valor del atributo padre como null!');
  END IF;
END;
/
/*No se puede tener mas de 3 miembros en el equipo*/
CREATE OR REPLACE TRIGGER Verificacion_equipo
BEFORE INSERT ON PERTENECE_EQUIPO
FOR EACH ROW
DECLARE CONT NUMBER;
BEGIN
  SELECT count(*) INTO CONT FROM pertenece_equipo WHERE :new.id_equipo = ID_EQUIPO;
  IF CONT=3 THEN
    RAISE_APPLICATION_ERROR(-20001,'La cantidad los integrantes esta completos');
  END IF;
END;
/
/*TRIGGER DE VERIFICACION EN GRUPO,PROBLEMA (LOS DOS NO PUEDEN SER NULOS)*/
CREATE OR REPLACE TRIGGER ID_COMENTARIO
BEFORE INSERT ON COMENTARIOS
FOR EACH ROW
BEGIN
    IF :NEW.GRUPO IS NULL AND :NEW.PROBLEMA IS NULL THEN
        RAISE_APPLICATION_ERROR(-20030,'El comentario debe tener por lo menos un grupo o un problema');
    END IF;
END;

/
declare
l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   lugares;
  execute immediate 'Create sequence seq_lugar
                      start with ' || l_new_seq ||
                      ' increment by 1';
end;

/
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   pruebas;

    execute immediate 'Create sequence seq_pruebas
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   comentarios;

    execute immediate 'Create sequence seq_comentarios
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   grupos;

    execute immediate 'Create sequence seq_grupos
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   equipos;

    execute immediate 'Create sequence seq_equipos
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;

/
/*Se puede eliminar cualquier persona del grupo, menos su creador.*/
CREATE OR REPLACE TRIGGER ELIMINAR_PERTENECE
BEFORE DELETE ON PERTENECE_GRUPO
FOR EACH ROW
DECLARE CONTADOR VARCHAR(30);
BEGIN
  SELECT CREADOR INTO CONTADOR FROM GRUPOS WHERE ID_GRUPO= :OLD.ID_GRUPO;
  IF CONTADOR= :OLD.ID_USUARIO THEN
    RAISE_APPLICATION_ERROR (-20023,'No se puede eliminar el creador del grupo');
  END IF;
END;

/
/*No se puede eliminar nunca un tema*/
CREATE OR REPLACE TRIGGER ELIMINAR_TEMA
BEFORE DELETE ON TEMAS
FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR (-20093,'NO SE PUEDE ELIMINAR NINGUN TEMA DE LA BASE DE DATOS.');
END;
/
/*No se puede eliminar nunca un comentario*/
CREATE OR REPLACE TRIGGER ELIMINAR_COMENTARIOS
BEFORE DELETE ON COMENTARIOS
FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR (-20093,'NO SE PUEDE ELIMINAR NINGUN COMENTARIO DE LA BASE DE DATOS.');
END;

