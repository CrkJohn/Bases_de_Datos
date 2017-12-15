ALTER TABLE USUARIOS ADD CONSTRAINT FK_USUARIO_LUGAR
 FOREIGN KEY (LUGAR) REFERENCES LUGARES(ID_LUGAR); 

ALTER TABLE GRUPOS ADD CONSTRAINT FK_GRUPOS_USUARIO
 FOREIGN KEY (CREADOR) REFERENCES USUARIOS(USERNAME);

ALTER TABLE PERTENECE_GRUPO ADD CONSTRAINT FK_PERTENECE_GRUPO_USUARIO
 FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(USERNAME);

ALTER TABLE PERTENECE_GRUPO ADD CONSTRAINT FK_PERTENECE_GRUPO_GRUPO
 FOREIGN KEY (ID_GRUPO) REFERENCES GRUPOS(ID_GRUPO);

ALTER TABLE EQUIPOS ADD CONSTRAINT FK_EQUIPOS_LUGAR
 FOREIGN KEY (LUGAR) REFERENCES LUGARES(ID_LUGAR);

ALTER TABLE PERTENECE_EQUIPO ADD CONSTRAINT FK_PERTENECE_EQUIPO_USUARIO
 FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(USERNAME);

ALTER TABLE PERTENECE_EQUIPO ADD CONSTRAINT FK_PERTENECE_EQUIPO_EQUIPO
 FOREIGN KEY (ID_EQUIPO) REFERENCES EQUIPOS(ID_EQUIPO);

ALTER TABLE TEMAS ADD CONSTRAINT FK_TEMAS_TEMAS
 FOREIGN KEY (PADRE) REFERENCES TEMAS(ID_TEMA);

ALTER TABLE PROBLEMAS ADD CONSTRAINT FK_PROBLEMAS_USUARIO
 FOREIGN KEY (CREADOR)REFERENCES USUARIOS(USERNAME);

ALTER TABLE PROBLEMAS ADD CONSTRAINT FK_PROBLEMAS_TEMA
 FOREIGN KEY (TEMA) REFERENCES TEMAS(ID_TEMA);

ALTER TABLE PRUEBAS ADD CONSTRAINT FK_PRUEBAS_PROBLEMA
 FOREIGN KEY (ID_PROBLEMA) REFERENCES PROBLEMAS(ID_PROBLEMA);

ALTER TABLE GRUPO_TIENE_TEMA ADD CONSTRAINT FK_GRUPO_TIENE_TEMA_TEMA
 FOREIGN KEY(ID_TEMA) REFERENCES TEMAS(ID_TEMA);

ALTER TABLE GRUPO_TIENE_TEMA ADD CONSTRAINT FK_GRUPO_TIENE_TEMA_GRUPO
 FOREIGN KEY (ID_GRUPO) REFERENCES GRUPOS(ID_GRUPO);

ALTER TABLE COMENTARIOS ADD CONSTRAINT FK_COMENTARIOS_GRUPO
 FOREIGN KEY (GRUPO) REFERENCES GRUPOS(ID_GRUPO);

ALTER TABLE COMENTARIOS ADD CONSTRAINT FK_COMENTARIOS_USUARIO
 FOREIGN KEY (USUARIO) REFERENCES USUARIOS(USERNAME);

ALTER TABLE COMENTARIOS ADD CONSTRAINT FK_COMENTARIOS_PROBLEMA
 FOREIGN KEY (PROBLEMA) REFERENCES PROBLEMAS(ID_PROBLEMA);
 
ALTER TABLE COMENTARIOS ADD CONSTRAINT FK_COMENTARIOS_COMENTARIOS
 FOREIGN KEY (ID_COMENTARIO_RESPUESTA) REFERENCES COMENTARIOS(ID_COMENTARIO);