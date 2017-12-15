
ALTER TABLE TIENE DROP CONSTRAINT FK_TIENE_EVENTOS;
ALTER TABLE SCOREBOARD DROP CONSTRAINT FK_SCOREBOARD_EVENTOS;
ALTER TABLE REALIZAN DROP CONSTRAINT FK_REALIZAN_EVENTOS;
ALTER TABLE ENVIOS DROP CONSTRAINT FK_ENVIOS_EVENTOS;
ALTER TABLE ASISTE DROP CONSTRAINT FK_ASISTE_EVENTOS;
ALTER TABLE INSCRIPCIONES DROP CONSTRAINT FK_INSCRIPCIONES_EVENTOS;



ALTER TABLE TIENE ADD CONSTRAINT FK_TIENE_EVENTOS
 FOREIGN KEY (ID_EVENTO) REFERENCES EVENTOS(ID_EVENTO) ON DELETE CASCADE;

ALTER TABLE SCOREBOARD ADD CONSTRAINT FK_SCOREBOARD_EVENTOS
 FOREIGN KEY (ID_EVENTO) REFERENCES EVENTOS(ID_EVENTO) ON DELETE CASCADE;
 
ALTER TABLE REALIZAN ADD CONSTRAINT FK_REALIZAN_EVENTOS
 FOREIGN KEY (ID_EVENTO) REFERENCES EVENTOS(ID_EVENTO) ON DELETE CASCADE;

ALTER TABLE ENVIOS ADD CONSTRAINT FK_ENVIOS_EVENTOS
 FOREIGN KEY (EVENTO) REFERENCES EVENTOS(ID_EVENTO) ON DELETE CASCADE; 

ALTER TABLE ASISTE ADD CONSTRAINT FK_ASISTE_EVENTOS
 FOREIGN KEY (EVENTO) REFERENCES EVENTOS(ID_EVENTO) ON DELETE CASCADE; 

ALTER TABLE INSCRIPCIONES ADD CONSTRAINT FK_INSCRIPCIONES_EVENTOS
 FOREIGN KEY (EVENTO) REFERENCES EVENTOS(ID_EVENTO) ON DELETE CASCADE; 


