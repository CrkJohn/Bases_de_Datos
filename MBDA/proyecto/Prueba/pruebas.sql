/*Yo Felipe Rodriguez nacido el día 08/10/76 de Bogotá- Colombia, con numero de telefono
3196740504 y correo felipkyrodri@hotmail.com y siendo profesor de ingeniería de sistemas
en la universidad de los andes con enfoque en la programación competitiva, además estando
actualmente activo en el ambito de la programación me quiero registrar en Pro-Comunity
con el username= Felipky, ya que deseo conocer sobre los problemas que se muestran en esta
red social y conocer los mejores competidores en esta.*/

EXECUTE PC_USUARIO.AD_USUARIO ('Felipky','Felipe Rodriguez','felipkyrodri@hotmail.com',sysdate,3196740504,'Profesor','Activo',20,null);

/*Como actual usuario de Pro-Comunity quiero saber que grupos existen en esta Red y de 
esta forma poder conocer los intereses de esta y revisar si existe algun grupo en específico
que me pueda interesar*/

SELECT PA_USUARIO.CO_GRUPO FROM dual;

/*Ademas de saber que grupos hay, también quisiera crear un grupo para explicar algunos temas
y de igual forma incentivar a mis estudiantes a unirse a la Red y que ese grupo creado sea para
preguntas acerca de lo que explico en la universidad*/

EXECUTE PA_USUARIO.AD__GRUPO ('ANDES','Felipky');

/*Quisiera de igual forma  tener un tema en especifico, en estos momentos me encuentro dictando
programación orientada hacia la parte de grafos, por esa razon me gustaría que mi grupo tenga
esa temática*/

/*Para esto necesito saber cual es el numero de mi grupo*/
SELECT PA_USUARIO.CO_GRUPO FROM dual;
/*De acuerdo al numero de mi grupo inserto in grupo tiene tema*/
EXECUTE PA_USUARIO.AD__TIENE (17, '3');

/*Me encantaría saber que personas tienen como estudio Ingeniería de sistemas, puesto que de esta forma
podría conocer posibles colegas o competidores*/

SELECT PA_USUARIO.CO_USUA_CO6 FROM DUAL;

/*Ahora me interesaría conocer las personas que han creado grupos y problemas, para mirar si alguno de los
que tiene como estudio ingeniería de sistemas ha sido y poder conocer más acerca de el, ya sea mediante
su correo o numero telefonico y ademas saber si es de Colombia para realizar algunas reuniones y dialogar
sobre Pro-Comunity*/

SELECT PA_USUARIO.CO_PRO_CO2 FROM DUAL;
SELECT PA_USUARIO.CO__GRUPO FROM DUAL;

/*Viendo las personas que estudian ingeniería de sistemas me gutaría saber los integrantes del grupo de 'anamaria1299',
ya que quisiera saber si puedo peertenecer a su equipo*/

SELECT PA_USUARIO.CO_EQUI('anamaria1299') FROM DUAL;

/*Como veo que ana maría puede admitir a un integrante en su grupo, entonces me he comunicado con ella y creo un nuevo
equipo con anamaria1299 y yowis, llamado "Yo c Python"*/

EXECUTE PA_USUARIO.AD_EQUIPO ('Yo c python',20);
/*Para poder saber insertar a equipo debo conocer el id_equipo entonces*/
 
 SELECT PA_USUARIO.CONS_EQUI FROM DUAL;
 EXECUTE PA_USUARIO.AD_PERTENECE_EQU ('yowis',11);
 EXECUTE PA_USUARIO.AD_PERTENECE_EQU ('anamaria1299',11);
 EXECUTE PA_USUARIO.AD_PERTENECE_EQU ('Felipky',11);
 
/*Además de trabajar con ana y yowis, me encantaría trabajar con srd98*/
 EXECUTE PA_USUARIO.AD_PERTENECE_EQU ('srd98',11);

/*Por otro lado me gustaría que las personas de mi grupo de competencia, puedan
conocerme un poco más y saber acerca de los temas que doy clase, por tanto quisiera
añadirlas a mi grupo*/
EXECUTE PA_USUARIO.AD__PERTENECE ('yowis',17);
EXECUTE PA_USUARIO.AD__PERTENECE ('anamaria1299',17);


 
 
 
 
 
 