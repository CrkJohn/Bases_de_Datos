UPDATE USUARIOS SET estado = 'Pasivo' WHERE USERNAME='anamaria1299';
INSERT INTO PERTENECE_EQUIPO VALUES('Amilcar Cardoso',9);
INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Nico_Lo','Nicolas Lopez','nicolo@gmail.com',TO_DATE('1989/08/12','yyyy/mm/dd'),44454787,'Profesor','Pasivo',20);
INSERT INTO  EQUIPOS(nombre,lugar) VALUES('ECIGMA SIGMA',20);
INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(40,'combinaciones',null);
INSERT INTO PERTENECE_EQUIPO VALUES('KarenPaola',1);
