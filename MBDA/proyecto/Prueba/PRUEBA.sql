Somos una empresa llamada Codigo++ me interesa la idea de la redSocial Procomunity
Nuestro proposito sera mejorar la calidad de competencia en jovenes, que apenas estan entrando al mundo 
del programacion

EXECUTE PA_ADMIN.AD_ASOCIACION('Codigo++',5,'Mejorar el rendmiento de los usuarios de Procomunity',3);

Nuestro primer evento ACMCA le tendremos un costo bajo tal que jovenes que apenas quieran ingresar a un mundo
de la programacion lo vean factible y facil de entrar;

EXECUTE PA_ASOCIACION.AD_EVENTO(150,'ACMCA','Facil',sysdate,null,4,'Maraton',10,1,0);

Ya dicho evento creado necesitamos crear un set problemas para nuestros competidores
EXECUTE PA_ASOCIACION.AD_TIENE(919,150);
EXECUTE PA_ASOCIACION.AD_TIENE(824,150);
EXECUTE PA_ASOCIACION.AD_TIENE(825,150);
EXECUTE PA_ASOCIACION.AD_TIENE(827,150);
EXECUTE PA_ASOCIACION.AD_TIENE(828,150);

Yo felipe lider del equipo "Yo c python" Queremos competir en un nuestro primer evento 
que no sea tan caro para no perder dinero si no nos llega a gustar

SELECT  PA_LIDER_EQUIPO.FACT_ECONO FROM DUAL;

Al encontrar el evento mas factible para mi equipo decidimos escribirnos a este evento

EXECUTE PA_LIDER_EQUIPO.AD_INSCRIPCION(10,11,150);
EXECUTE PA_LIDER_EQUIPO.AD_INSCRIPCION(10,1,150);
EXECUTE PA_LIDER_EQUIPO.AD_INSCRIPCION(10,2,150);
EXECUTE PA_LIDER_EQUIPO.AD_INSCRIPCION(10,10,150);


Estando en la maraton quiero consultar el set problemas que hay en el evento

SELECT PA_LIDER_EQUIPO.PROBLEMAS(150) FROM DUAL;

Al mirar el set de problemas se tiene una idea como hacer un ejercicio x tal que se manda 
el programa haber si funciona lo pensaado

EXECUTE PA_LIDER_EQUIPO.AD_ENVIOS(824,11,150,'C++');
EXECUTE PA_LIDER_EQUIPO.AD_ENVIOS(824,1,150,'C++');
EXECUTE PA_LIDER_EQUIPO.AD_ENVIOS(824,2,150,'C++');
EXECUTE PA_LIDER_EQUIPO.AD_ENVIOS(919,11,150,'JAVA');
EXECUTE PA_LIDER_EQUIPO.AD_ENVIOS(825,11,150,'JAVA');
EXECUTE PA_LIDER_EQUIPO.AD_ENVIOS(825,2,150,'C++');
EXECUTE PA_LIDER_EQUIPO.AD_ENVIOS(827,2,150,'C++');
EXECUTE PA_LIDER_EQUIPO.AD_ENVIOS(028,2,150,'C++');

Ahora mi equipo y yo queremos ver si nos paso el ejercicio tal que miramos en los ejercicios resueltos

SELECT PA_LIDER_EQUIPO.RESULTADO_SCORE(150) FROM DUAL;

El lider Codigo++ quiero consultar los mejores equipos de mi primer evento que di

SELECT  PA_ASOCIACION.MEJOR_EQUIPO FROM DUAL;

Ahora Codigo++ vio mucha falencias en la maratos ACMCA entonces decide generar una primera una conferencia tal 
que va explicar que un futuro va hacer traing camp para mejorar el rendimiento de los usuarios activos 
de Procomunity.

EXECUTE PA_ASOCIACION.AD_EVENTO(151,'PREV','Facil',sysdate,null,4,'Conferencia',10,1,0);
EXECUTE PA_LIDER_EQUIPO.AD_INSCRIPCION(10,11,151);
EXECUTE PA_LIDER_EQUIPO.AD_INSCRIPCION(10,1,151);
EXECUTE PA_LIDER_EQUIPO.AD_INSCRIPCION(10,2,151);
EXECUTE PA_LIDER_EQUIPO.AD_INSCRIPCION(10,10,151);


 