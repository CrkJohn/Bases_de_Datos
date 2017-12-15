/*CRUD NO OK*/
EXECUTE PC_COMENTARIOS.AD_COMENTARIOS (50,'Requiero ayuda en el problema 853',TO_DATE('2007/07/09', 'yyyy/mm/dd'),1,'srd98',853,null);
EXECUTE PC_EQUIPO.AD_EQUIPO ('ECIGMA SIGMA',20);
EXECUTE PC_EQUIPO.AD_PERTENECE_EQU ('srd98',2);
EXECUTE PC_GRUPO.AD_GRUPO ('Grafos','srd98');
EXECUTE PC_GRUPO.AD_TIENE (21,'200');
EXECUTE PC_GRUPO.AD_PERTENECE ('anamaria199',21);
EXECUTE PC_GRUPO.EL_PERTENECE ('CrkJohn',1);
EXECUTE PC_PROBLEMA.AD_PROBLEMA(null,'Sum It Up','https://uva.onlinejudge.org/external/5/574.pdf',3,'600MB','Amilcar Cardoso',6);
EXECUTE PC_PROBLEMA.ELI_PROBLEMA(900);
EXECUTE PC_USUARIO.AD_USUARIO('CrkJohn','Camilo Velandia','Camilo Velandia@mail.escuelaing.edu.co',sysdate,100358,'Estudiante','Pasivo',1,null);
EXECUTE PC_USUARIO.MOD_USUARIO('JCamiloVelandiaB','Camilo Velndia','Camilo Velandia@mail.escuelaing.edu.co',sysdate,100358,'Estudiante','Pasivo',1,null);
EXECUTE PC_USUARIO.ELI_USUARIO('CrkJohn');