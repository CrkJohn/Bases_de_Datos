/*POBLAR OK*/
		/*POBLAR LUGARES*/
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Benín','Porto-Novo','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Bielorrusia','Minsk','Europa');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Birmania','Naipyidó','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Bolivia','Sucre','América');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Bosnia-Herzegovina','Sarajevo','Europa');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Botsuana','Gaborone','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Brasil','Brasilia','América');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Brunéi','Bandar Seri Begawan','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Bulgaria','Sofía','Europa');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Burundi','Buyumbura','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Bután','Thimphu','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Cabo Verde','Praia','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Camerún','Yaundé','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Canadá','Ottawa','América');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Catar','Doha','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Chad','Yamena','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Chile','Santiago','América');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'China','Pekín','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Chipre','Nicosia','Europa');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Colombia','Bogotá','América');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Vaticano','Vaticano','Europa');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Venezuela','Caracas','América');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Vietnam','Hanói','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Yemen','Saná','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Yibuti','Yibuti','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Zambia','Lusaka','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Zimbabue','Harare','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Comoras','Moroni','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Congo','Brazzaville','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Corea del Norte','Pionyang','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Costa de Marfil','Yamusukro','África');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Costa Rica','San José','América');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Croacia','Zagreb','Europa');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Cuba','La Habana','América');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Georgia','Tiflis','Asia');
		INSERT INTO LUGARES(id_lugar,pais,ciudad,continente) VALUES(seq_lugar.nextval,'Ghana','Accra','África');

		/*POBLAR USUARIO*/
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR,PERFIL) VALUES ('anamaria1299','Ana María Rincón Casallas','anamaria@gmail.com',TO_DATE('1999/03/12','yyyy/mm/dd'),3192805157,'Estudiante','Activo',20,
		'<?xml version="1.0"?>
		<Perfil>
			<estudios>
				<estudio nombre= "Ingeniería de sistemas">
					<universidad 
						nombre="Escuela Colombiana de Ingeniería" 
						pais="Colombia" 
						ciudad="Bogota"> 
					</universidad>
					<fecha 
						inicio="2016-2"> 
					</fecha>
				</estudio>
			</estudios>
			<proyectos>
				<proyecto nombre="Procomunity" tema= "Bases de datos">
					<fecha 	
						inicio="2017-2">
					</fecha>
					<detalle>
						Nuestra misión es almacenar preguntas y soluciones, para que la comunidad de programadores competitivos tenga una 
						retroalimentación entre ellos y de esta forma mejorar el rendimiento de las personas, de igual manera se tendrán 
						registros de los procesos de cada usuario, para que las organizaciones conozcan el avance de cada persona.
					</detalle>
				</proyecto>
				<proyecto nombre= "TEAM" tema= "Programacion">
					<fecha
						inicio= "2017-2">
					</fecha>
					<detalle>
						Nuestra misión es tener un repositorio con algunos problemas de programacion
						y sus respectivas soluciones con videos de explicacion para generar una nueva
						forma de ayuda a los nuevos y antigos programadores.
					</detalle>
				</proyecto>
			</proyectos>
		</Perfil>');
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR,PERFIL) VALUES ('CrkJohn','John David Ibañez Rodriguez','johndavid@gmail.com',TO_DATE('1997/11/17','yyyy/mm/dd'),3209408971,'Estudiante','Activo',20,
		'<?xml version="1.0"?>
		<Perfil>
			<estudios>
				<estudio nombre= "Ingeniería de sistemas">
					<universidad 
						nombre="Escuela Colombiana de Ingeniería" 
						pais="Colombia" 
						ciudad="Bogota"> 
					</universidad>
					<fecha 
						inicio="2016-1"> 
					</fecha>
				</estudio>
			</estudios>
			<proyectos>
				<proyecto nombre="Procomunity" tema= "Bases de datos">
					<fecha 	
						inicio="2017-2">
					</fecha>
					<detalle>
						Nuestra misión es almacenar preguntas y soluciones, para que la comunidad de programadores competitivos tenga una 
						retroalimentación entre ellos y de esta forma mejorar el rendimiento de las personas, de igual manera se tendrán 
						registros de los procesos de cada usuario, para que las organizaciones conozcan el avance de cada persona.
					</detalle>
				</proyecto>
				<proyecto nombre= "TEAM" tema= "Programacion">
					<fecha
						inicio= "2017-2">
					</fecha>
					<detalle>
						Nuestra misión es tener un repositorio con algunos problemas de programacion
						y sus respectivas soluciones con videos de explicacion para generar una nueva
						forma de ayuda a los nuevos y antigos programadores.
					</detalle>
				</proyecto>
			</proyectos>
		</Perfil>');
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR,PERFIL) VALUES ('srd98','Santiago Rocha Duran','santirocha@hotmail.com',TO_DATE('1998/01/10','yyyy/mm/dd'),3112345678,'Estudiante','Activo',20,
		'<?xml version="1.0"?>
		<Perfil>
			<estudios>
				<estudio nombre= "Ingeniería de sistemas">
					<universidad 
						nombre="Escuela Colombiana de Ingeniería" 
						pais="Colombia" 
						ciudad="Bogota"> 
					</universidad>
					<fecha 
						inicio="2016-1"> 
					</fecha>
				</estudio>
			</estudios>
			<proyectos>
				<proyecto nombre="Concecsionario" tema= "Bases de datos">
					<fecha 	
						inicio="2017-2">
					</fecha>
					<detalle>
						Nuestra misión es almacenar datos acercca de un concesionario,
						ya sea desde sus ventas hasta la informacion de cada cliente.
					</detalle>
				</proyecto>
				<proyecto nombre= "TEAM" tema= "Programacion">
					<fecha
						inicio= "2017-2">
					</fecha>
					<detalle>
						Nuestra misión es tener un repositorio con algunos problemas de programacion
						y sus respectivas soluciones con videos de explicacion para generar una nueva
						forma de ayuda a los nuevos y antigos programadores.
					</detalle>
				</proyecto>
			</proyectos>
		</Perfil>');
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR,PERFIL) VALUES ('yowis','Yohanna Andrea Toro Duran','yowisToro@gmail.com',TO_DATE('1997/09/28','yyyy/mm/dd'),3009823541,'Estudiante','Activo',20,
		'<?xml version="1.0"?>
		<Perfil>
			<estudios>
				<estudio nombre= "Ingeniería de sistemas">
					<universidad 
						nombre="Escuela Colombiana de Ingeniería" 
						pais="Colombia" 
						ciudad="Bogota"> 
					</universidad>
					<fecha 
						inicio="2016-1"> 
					</fecha>
				</estudio>
			</estudios>
			<proyectos>
				<proyecto nombre="Justo y Bueno" tema= "Bases de datos">
					<fecha 	
						inicio="2017-2">
					</fecha>
					<detalle>
						Nuestra misión es almacenar datos acercca de un lugar de ventas,
						ya sea desde sus ventas hasta la informacion de cada cliente.
					</detalle>
				</proyecto>
				<proyecto nombre= "TEAM" tema= "Programacion">
					<fecha
						inicio= "2017-2">
					</fecha>
					<detalle>
						Nuestra misión es tener un repositorio con algunos problemas de programacion
						y sus respectivas soluciones con videos de explicacion para generar una nueva
						forma de ayuda a los nuevos y antigos programadores.
					</detalle>
				</proyecto>
			</proyectos>
		</Perfil>');
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR,PERFIL) VALUES ('diegui','Diego Alberto Cardenas','diegui@yahoo.com',TO_DATE('1999/04/17','yyyy/mm/dd'),3012357345,'Estudiante','Activo',20,
		'<?xml version="1.0"?>
		<Perfil>
			<estudios>
				<estudio nombre= "Ingeniería de sistemas">
					<universidad 
						nombre="Escuela Colombiana de Ingeniería" 
						pais="Colombia" 
						ciudad="Bogota"> 
					</universidad>
					<fecha 
						inicio="2016-1"> 
					</fecha>
				</estudio>
			</estudios>
			<proyectos>
				<proyecto nombre="Concecsionario" tema= "Bases de datos">
					<fecha 	
						inicio="2017-2">
					</fecha>
					<detalle>
						Nuestra misión es almacenar datos acercca de un concesionario,
						ya sea desde sus ventas hasta la informacion de cada cliente.
					</detalle>
				</proyecto>
				<proyecto nombre= "TEAM" tema= "Programacion">
					<fecha
						inicio= "2017-2">
					</fecha>
					<detalle>
						Nuestra misión es tener un repositorio con algunos problemas de programacion
						y sus respectivas soluciones con videos de explicacion para generar una nueva
						forma de ayuda a los nuevos y antigos programadores.
					</detalle>
				</proyecto>
			</proyectos>
		</Perfil>');
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR,PERFIL) VALUES ('Jvargas','Javier Andres Vargas Lopez','jvargas@gmail.com',TO_DATE('1998/10/29','yyyy/mm/dd'),3209854761,'Estudiante','Activo',20,
		'<?xml version="1.0"?>
		<Perfil>
			<estudios>
				<estudio nombre= "Ingeniería de sistemas">
					<universidad 
						nombre="Escuela Colombiana de Ingeniería" 
						pais="Colombia" 
						ciudad="Bogota"> 
					</universidad>
					<fecha 
						inicio="2016-1"> 
					</fecha>
				</estudio>
			</estudios>
			<proyectos>
				<proyecto nombre="Justo y Bueno" tema= "Bases de datos">
					<fecha 	
						inicio="2017-2">
					</fecha>
					<detalle>
						Nuestra misión es almacenar datos acercca de un lugar de ventas,
						ya sea desde sus ventas hasta la informacion de cada cliente.
					</detalle>
				</proyecto>
				<proyecto nombre= "TEAM" tema= "Programacion">
					<fecha
						inicio= "2017-2">
					</fecha>
					<detalle>
						Nuestra misión es tener un repositorio con algunos problemas de programacion
						y sus respectivas soluciones con videos de explicacion para generar una nueva
						forma de ayuda a los nuevos y antigos programadores.
					</detalle>
				</proyecto>
			</proyectos>
		</Perfil>');
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Amilcar Cardoso','Amilcar Cardoso Torres','Amil@hotmail.com',TO_DATE('1988/10/29','yyyy/mm/dd'),3206754328761,'Profesor','Pasivo',3);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Cristina Ribeiro','Cristina Lopez Ribeiro','Cris@gmail.com',TO_DATE('1990/07/8','yyyy/mm/dd'),5489632104785,'Ingeniera de software','Activo',23);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Delfim Marado Torres','Delfim Marado Torres','delfim@hotmail.com',TO_DATE('1978/12/24','yyyy/mm/dd'),2376128372984,'Estudiante','Activo',32);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Fernando Silva','Fernando Silva','Fernand@hotmail.com',TO_DATE('1988/06/23','yyyy/mm/dd'),353254253,'Profesor','Activo',10);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Isabel Nunes','Isabel Nunes','Isabel@hotmail.com',TO_DATE('1968/02/14','yyyy/mm/dd'),424253143251,'Ingeniero Mecanico','Pasivo',9);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Miguel Filgueiras','Miguel Filgueiras','Miguelll@hotmail.com',TO_DATE('1945/05/29','yyyy/mm/dd'),424242,'Pensinado','Pasivo',1);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Pedro Guerreiro','Pedro Guerreiro','Pedro_Guerreiro@hotmail.com',TO_DATE('1974/11/29','yyyy/mm/dd'),4274784454,'Doctor','Activo',29);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Pedro Henriques','Pedro Henriques','Henriques@gmail.com',TO_DATE('1990/10/29','yyyy/mm/dd'),4448484,'Estudiante','Activo',17);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('José Paulo Leal','José Paulo Leal','Jose_Paulo@hotmail.com',TO_DATE('1989/10/29','yyyy/mm/dd'),54254545,'Arquitecto','Pasivo',9);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('A. Augusto Sousa','Augusto Sousa','Augusto_Sousa@hotmail.com',TO_DATE('1938/10/29','yyyy/mm/dd'),4543354,'Profesor','Pasivo',27);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Gabriel David','Gabriel David','Gabriel_David@hotmail.com',TO_DATE('1968/10/29','yyyy/mm/dd'),45454534354,'Profesor','Activo',7);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Gordon V. Cormack','Gordon V. Cormack','gordon@hotmail.com',TO_DATE('1998/10/29','yyyy/mm/dd'),45425424,'Estudiante','Pasivo',3);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('David Mason Ryerson Polytech','Ryerson Polytech','Ryerson_Polytech@hotmail.com',TO_DATE('1977/10/29','yyyy/mm/dd'),123456323,'Profesor','Pasivo',13);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Piotr Rudnicki','Piotr Rudnicki','Piotr_Rudnicki@hotmail.com',TO_DATE('1998/10/29','yyyy/mm/dd'),7897897,'Estudiante','Activo',13);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Ricardo Lopes','Ricardo Lopes','Ricardolo@hotmail.com',TO_DATE('1938/10/29','yyyy/mm/dd'),45201200,'Ingeniero','Pasivo',19);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Joao Marques','Joao Marques','Joao_Marques@yahoo.com',TO_DATE('1988/11/3','yyyy/mm/dd'),02323423,'Ingeniero','Activo',15);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Jose Carlos Ramallo','Jose Carlos Ramallo','JosCarlo@gmail.com',TO_DATE('1999/10/29','yyyy/mm/dd'),012939821,'Estudiante','Activo',12);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Simao Sousa','Simao Sousa','Simao_Sousa@hotmail.com',TO_DATE('1990/10/29','yyyy/mm/dd'),568464,'Profesor','Pasivo',13);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Pedro Ribeiro','Pedro Ribeiro','PedritoJ@gmail.com',TO_DATE('2000/04/14','yyyy/mm/dd'),58796314,'Estudiante','Activo',19);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Ana Paula Tomas','Ana Paula Tomas','Paulana@yahoo.com',TO_DATE('1995/04/01','yyyy/mm/dd'),956485840,'Estudiante','Activo',7);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Simao Melo de Sousa','Simao Melo de Sousa','SimaoMeloSousa@hotmail.com',TO_DATE('1994/02/13','yyyy/mm/dd'),4546852,'Ingeniero de Sonido','Activo',23);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Nuno Preguica','Nuno Preguica','Nuno_Preguica@hotmail.com',TO_DATE('1996/07/9','yyyy/mm/dd'),90907456,'Psicologo','Pasivo',27);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Margarida Mamede','Margarida Mamede','Margarida_Mamede@hotmail.com',TO_DATE('1978/11/19','yyyy/mm/dd'),4854864,'Profesor','Activo',21);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Ana Paula Maldonado','Ana Paula Maldonado','AnaMaldo@hotmail.com',TO_DATE('1999/05/9','yyyy/mm/dd'),1454545,'Estudiante','Pasivo',12);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Igor Naverniouk (Abednego)','Igor Naverniouk','Abednego@hotmail.com',TO_DATE('1958/10/29','yyyy/mm/dd'),45454444,'Profesor','Pasivo',9);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Stefan Büttcher','Stefan Büttcher','Büttcher@hotmail.com',TO_DATE('1948/12/4','yyyy/mm/dd'),243213213,'Ingeniero','Pasivo',2);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Raymond Chun','Raymond Chun','RaymondChun@hotmail.com',TO_DATE('1985/10/3','yyyy/mm/dd'),4545455,'Profesor','Pasivo',4);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Mak Yan Kei','Mak Yan Kei','YanKei@hotmail.com',TO_DATE('2002/10/29','yyyy/mm/dd'),48547,'Estudiante','Activo',6);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Fer','Luisa Fernanda Fajardo Piratoa','Luisafer@gmail.com',TO_DATE('1998/11/03','yyyy/mm/dd'),325485215,'Estudiante','Activo',20);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Wilsson','Wilson Melo','el_gomelo@gmail.com',TO_DATE('1996/02/13','yyyy/mm/dd'),4487545,'Estudiante','Activo',20);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Caph12','Carlos Pinzon','carlospzo@gmail.com',TO_DATE('1997/04/29','yyyy/mm/dd'),58442545,'Estudiante','Activo',20);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Anzola','Alejandro Anzonla','doblea@gmail.com',TO_DATE('1997/06/29','yyyy/mm/dd'),23124432,'Estudiante','Activo',20);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('KarenPaola','Karen Paola Duran Vivas','karen_Duran@gmail.com',TO_DATE('1997/08/29','yyyy/mm/dd'),75454854,'Estudiante','Activo',20);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('hquilo','Camilo Rocha','camilo.rocha@gmail.com',TO_DATE('1987/08/12','yyyy/mm/dd'),4854787,'Profesor','Pasivo',20);
		INSERT INTO USUARIOS (USERNAME,NOMBRE,CORREO,FECHA,TELEFONO,OCUPACION,ESTADO,LUGAR) VALUES ('Nico_Lo','Nicolas Lopez','nicolo@gmail.com',TO_DATE('1989/08/12','yyyy/mm/dd'),44454787,'Profesor','Pasivo',20);

		/*POBLAR TEMAS*/
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(1,'RAIZ',NULL);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(2,'Estructura_de_datos',1);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(4,'Union_find',2);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(5,'Segment_tree',2);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(6,'Fenwick',2);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(3,'Grafos',2);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(7,'Grafo_transversal',3);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(8,'Busquedad_a_profundidad',7);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(9,'Busquedad_a_ancho',7);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(10,'Encontrando_componentes_conectados',7);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(11,'Flood_fill',7);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(12,'Orden_topologico',7);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(13,'Bipartite_check',7);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(14,'Encontrando_puntos_de_articulacion_y_puentes',7);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(15,'Encontrar_componentes_fuertemente_conectados',7);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(16,'Arbol_de_espacion_minima',3);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(17,'Kruskal',16);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(18,'PRIM',16);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(19,'Redes_flujo',3);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(20,'Ford_fulkseson',19);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(21,'Edmonds_Karp',19);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(22,'Special_graphs',3);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(23,'DAG',22);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(24,'Tree',22);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(25,'Eulerian_Graph',22);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(26,'bipartito_Graph',22);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(27,'String_processing',1);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(28,'String_matching',27);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(29,'KMP',28);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(30,'String_Matching_2D',28);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(31,'String_processing_DP',27);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(32,'Edit_Distance',31);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(33,'LCP',31);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(34,'Non_classical_String_DP',31);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(35,'SUFFIX/TREE/Trie/Array.',27);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(38,'Suffix_trie',35);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(36,'Suffix_Tree',35);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(37,'Suffix_array',35);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(39,'Matematicas',1);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(40,'combinaciones',39);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(41,'fibonacci_numbers',40);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(42,'Binomia11l_coefficients',40);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(43,'Catalan_numbers',40);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(44,'Teoria_numeros',39);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(45,'Numeros_primos',44);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(46,'GCD_y_LCM',44);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(47,'Factorial',44);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(48,'Criba_de_erastotoles',44);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(49,'Modulo_aritmetica',44);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(50,'Probabilidad',39);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(51,'Encontrando_ciclos',39);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(52,'Soluciones_eficientes_usando_ED',51);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(53,'Ciclo_de_búsqueda_de_Floyd',51);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(54,'Teoria_de_juegos',39);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(55,'Arbol_de_decision',54);
		INSERT INTO TEMAS(ID_TEMA,NOMBRE,PADRE) VALUES(56,'El_juego_de_nim',54);

		/*POBLAR GRUPOS*/
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Grafos','CrkJohn');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'El Team','srd98');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Girls','yowis');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Magumbus','Anzola');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Ya valieron','Simao Sousa');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Variados','José Paulo Leal');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Problemas hard','Nuno Preguica');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Los Dificiles','Raymond Chun');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Dinamica','Caph12');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Ecigma','hquilo');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Ideas','KarenPaola');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Los Easy','A. Augusto Sousa');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Aqui','Fernando Silva');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Discusiones','Joao Marques');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Entrenamientos','Ana Paula Tomas');
		INSERT INTO GRUPOS  (ID_GRUPO,NOMBRE,CREADOR) VALUES (seq_grupos.nextval,'Competencias','Gabriel David');

		/*POBLAR EQUIPOS*/
		INSERT INTO  EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'ECIGMA SIGMA',20);
		INSERT INTO  EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'ECIGMA OMEGA',1);
		INSERT INTO  EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'ECIGMA ALPHA',4);
		INSERT INTO  EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'ECIGMA CODE',12);
		INSERT INTO  EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'YO C++ QUE USTED',20);
		INSERT INTO  EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'JAVA_LIERON VERGA',1);
		INSERT INTO  EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'RunTimeError',4);
		INSERT INTO EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'magUNbos',5);
		INSERT INTO EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'Meyito',20);
		INSERT INTO EQUIPOS(id_equipo,nombre,lugar) VALUES(seq_equipos.nextval,'ECIGMA BANDERA',20);

		/*POBLAR PERTENECE_GRUPO*/
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'CrkJohn');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (2,'srd98');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (3,'yowis');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (4,'Anzola');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (5,'Simao Sousa');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (6,'José Paulo Leal');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (7,'Nuno Preguica');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (8,'Raymond Chun');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (9,'Caph12');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'hquilo');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (11,'KarenPaola');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (12,'A. Augusto Sousa');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (13,'Fernando Silva');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (14,'Joao Marques');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (15,'Ana Paula Tomas');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (16,'Gabriel David');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'anamaria1299');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'srd98');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'Isabel Nunes');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'Joao Marques');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'Ana Paula Tomas');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'Ana Paula Maldonado');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'Igor Naverniouk (Abednego)');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (1,'Raymond Chun');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (2,'anamaria1299');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (2,'CrkJohn');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (2,'yowis');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (2,'diegui');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (2,'Jvargas');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'anamaria1299');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'CrkJohn');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'srd98');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'yowis');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'Wilsson');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'Caph12');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'Anzola');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'KarenPaola');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'Nico_Lo');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (10,'Ricardo Lopes');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (11,'anamaria1299');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (11,'Fer');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (3,'KarenPaola');
		INSERT INTO PERTENECE_GRUPO  (ID_GRUPO,ID_USUARIO) VALUES (3,'anamaria1299');

		/*POBLAR PERTENECE_EQUIPO*/
		INSERT INTO PERTENECE_EQUIPO VALUES('CrkJohn',1);
		INSERT INTO PERTENECE_EQUIPO VALUES('srd98',1);
		INSERT INTO PERTENECE_EQUIPO VALUES('Anzola',1);
		INSERT INTO PERTENECE_EQUIPO VALUES('CrkJohn',2);
		INSERT INTO PERTENECE_EQUIPO VALUES('srd98',2);
		INSERT INTO PERTENECE_EQUIPO VALUES('Wilsson',2);
		INSERT INTO PERTENECE_EQUIPO VALUES('anamaria1299',4);
		INSERT INTO PERTENECE_EQUIPO VALUES('yowis',4);
		INSERT INTO PERTENECE_EQUIPO VALUES('Caph12',3);
		INSERT INTO PERTENECE_EQUIPO VALUES('Mak Yan Kei',3);
		INSERT INTO PERTENECE_EQUIPO VALUES('Cristina Ribeiro',5);
		INSERT INTO PERTENECE_EQUIPO VALUES('Delfim Marado Torres',5);
		INSERT INTO PERTENECE_EQUIPO VALUES('Fernando Silva',5);
		INSERT INTO PERTENECE_EQUIPO VALUES('Pedro Henriques',6);
		INSERT INTO PERTENECE_EQUIPO VALUES('Gabriel David',6);
		INSERT INTO PERTENECE_EQUIPO VALUES('Pedro Guerreiro',6);
		INSERT INTO PERTENECE_EQUIPO VALUES('Joao Marques',7);
		INSERT INTO PERTENECE_EQUIPO VALUES('Jose Carlos Ramallo',7);
		INSERT INTO PERTENECE_EQUIPO VALUES('Pedro Ribeiro',7);
		INSERT INTO PERTENECE_EQUIPO VALUES('Jvargas',8);
		INSERT INTO PERTENECE_EQUIPO VALUES('diegui',8);
		INSERT INTO PERTENECE_EQUIPO VALUES('KarenPaola',9);
		INSERT INTO PERTENECE_EQUIPO VALUES('CrkJohn',9);

		/*POBLAR GRUPO_TIENE_TEMA*/
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (1,'2');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (2,'25');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (3,'34');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (4,'13');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (5,'11');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (6,'10');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (7,'12');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (8,'31');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (9,'24');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (10,'23');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (11,'5');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (12,'7');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (13,'1');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (14,'3');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (15,'4');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (16,'16');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (15,'17');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (14,'18');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (15,'19');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (13,'2');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (13,'4');
		INSERT INTO GRUPO_TIENE_TEMA (ID_GRUPO,ID_TEMA) VALUES (2,'22');

		/*POBLAR PROBLEMAS*/
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (824,'Coast Tracker','https://uva.onlinejudge.org/external/8/824.pdf',3,'600MB','Amilcar Cardoso',6);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (825,'Walking on the Safe Side','https://uva.onlinejudge.org/external/8/825.pdf',3,'600MB','Cristina Ribeiro',1);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (826,'Symbolic Numerical System','https://uva.onlinejudge.org/external/8/826.pdf',3,'600MB','Delfim Marado Torres',25);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (827,'Buddy Memory Allocator','https://uva.onlinejudge.org/external/8/827.pdf',3,'600MB','Fernando Silva',6);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (828,'Deciphering Messages','https://uva.onlinejudge.org/external/8/828.pdf',3,'600MB','Isabel Nunes',7);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (829,'Almost Balanced Trees','https://uva.onlinejudge.org/external/8/829.pdf',3,'600MB','Miguel Filgueiras',13);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (830,'Shark','https://uva.onlinejudge.org/external/8/830.pdf',3,'600MB','Pedro Guerreiro',20);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (831,'Document Validator','https://uva.onlinejudge.org/external/8/831.pdf',3,'600MB','Pedro Henriques',11);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (832,'Financial Risk','https://uva.onlinejudge.org/external/8/832.pdf',3,'600MB','José Paulo Leal',4);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (833,'Water Falls','https://uva.onlinejudge.org/external/8/833.pdf',3,'600MB','A. Augusto Sousa',5);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (834,'Continued Fractions','https://uva.onlinejudge.org/external/8/834.pdf',3,'600MB','Fernando Silva',1);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (835,'Square of Primes','https://uva.onlinejudge.org/external/8/835.pdf',3,'600MB','Gabriel David',10);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (836,'Largest Submatrix','https://uva.onlinejudge.org/external/8/836.pdf',3,'600MB','Fernando Silva',15);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (837,'Light and Transparencies','https://uva.onlinejudge.org/external/8/837.pdf',3,'600MB','A. Augusto Sousa',25);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (838,'Worm World','https://uva.onlinejudge.org/external/8/838.pdf',3,'600MB','Fernando Silva',28);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (839,'Not so Mobile','https://uva.onlinejudge.org/external/8/839.pdf',3,'600MB','José Paulo Leal',37);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (840,'Deadlock Detection','https://uva.onlinejudge.org/external/8/840.pdf',3,'600MB','Fernando Silva',9);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (841,'Snake','https://uva.onlinejudge.org/external/8/841.pdf',3,'600MB','Fernando Silva',5);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (842,'Crossword Puzzles','https://uva.onlinejudge.org/external/8/842.pdf',3,'600MB','Gordon V. Cormack',9);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (843,'Crypt Kicker','https://uva.onlinejudge.org/external/8/843.pdf',3,'600MB','Gordon V. Cormack',23);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (844,'Pousse','https://uva.onlinejudge.org/external/8/844.pdf',3,'600MB','David Mason Ryerson Polytech',1);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (845,'Gas Station Numbers','https://uva.onlinejudge.org/external/8/845.pdf',3,'600MB','Gordon V. Cormack',33);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (846,'Steps','https://uva.onlinejudge.org/external/8/846.pdf',3,'600MB','Piotr Rudnicki',17);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (848,'Fmt','https://uva.onlinejudge.org/external/8/848.pdf',3,'600MB','Gordon V. Cormack',35);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (850,'Crypt Kicker II','https://uva.onlinejudge.org/external/8/850.pdf',3,'600MB','Gordon V. Cormack',10);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (851,'Maze','https://uva.onlinejudge.org/external/8/851.pdf',3,'600MB','Gordon V. Cormack',23);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (852,'Deciding victory in Go','https://uva.onlinejudge.org/external/8/852.pdf',3,'600MB','Joao Marques',22);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (853,'DVD Subtitles','https://uva.onlinejudge.org/external/8/853.pdf',3,'600MB','Pedro Guerreiro',5);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (900,'Brick Wall Patterns','https://uva.onlinejudge.org/external/9/900.pdf',3,'600MB','Fernando Silva',34);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (901,'From Databases to XML','https://uva.onlinejudge.org/external/9/901.pdf',3,'600MB','Gabriel David',17);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (902,'Password Search','https://uva.onlinejudge.org/external/9/902.pdf',3,'600MB','Ricardo Lopes',15);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (903,'Spiral of Numbers','https://uva.onlinejudge.org/external/9/903.pdf',3,'600MB','José Paulo Leal',18);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (904,'Overlapping Air Traffic Control Zones','https://uva.onlinejudge.org/external/9/904.pdf',3,'600MB','Fernando Silva',32);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (905,'Tacos Panchita','https://uva.onlinejudge.org/external/9/905.pdf',3,'600MB','Amilcar Cardoso',11);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (906,'Rational Neighbor','https://uva.onlinejudge.org/external/9/906.pdf',3,'600MB','Delfim Marado Torres',11);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (907,'Winterim Backpacking Trip','https://uva.onlinejudge.org/external/9/907.pdf',3,'600MB','Fernando Silva',28);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (908,'Re-connecting Computer Sites','https://uva.onlinejudge.org/external/9/908.pdf',3,'600MB','Joao Marques',18);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (909,'The BitPack Data Compression Problem','https://uva.onlinejudge.org/external/9/909.pdf',3,'600MB','Jose Carlos Ramallo',36);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (910,'TV game','https://uva.onlinejudge.org/external/9/910.pdf',3,'600MB','Gabriel David',17);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (911,'Multinomial Coefficients','https://uva.onlinejudge.org/external/9/911.pdf',3,'600MB','Pedro Guerreiro',12);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (912,'Live From Mars','https://uva.onlinejudge.org/external/9/912.pdf',3,'600MB','Simao Sousa',1);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (913,'Joana and the Odd Numbers','https://uva.onlinejudge.org/external/9/913.pdf',3,'600MB','Fernando Silva',16);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (914,'Jumping Champion','https://uva.onlinejudge.org/external/9/914.pdf',3,'600MB','Pedro Ribeiro',32);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (915,'Stack of Cylinders','https://uva.onlinejudge.org/external/9/915.pdf',3,'600MB','A. Augusto Sousa',22);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (916,'Dividing Land','https://uva.onlinejudge.org/external/9/916.pdf',3,'600MB','Pedro Ribeiro',21);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (917,'Euro 2004','https://uva.onlinejudge.org/external/9/917.pdf',3,'600MB','Pedro Ribeiro',35);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (918,'ASCII Mandelbrot','https://uva.onlinejudge.org/external/9/918.pdf',3,'600MB','Pedro Ribeiro',2);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (919,'Cutting Polyominoes','https://uva.onlinejudge.org/external/9/919.pdf',3,'600MB','Ana Paula Tomas',34);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (920,'Sunny Mountains','https://uva.onlinejudge.org/external/9/920.pdf',3,'600MB','Simao Melo de Sousa',21);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (921,'A Word Puzzle in the Sunny Mountains','https://uva.onlinejudge.org/external/9/921.pdf',3,'600MB','Pedro Henriques',19);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (922,'Rectangle by the Ocean','https://uva.onlinejudge.org/external/9/922.pdf',3,'600MB','Pedro Guerreiro',35);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (923,'One Against Many','https://uva.onlinejudge.org/external/9/923.pdf',3,'600MB','Nuno Preguica',33);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (924,'Spreading The News','https://uva.onlinejudge.org/external/9/924.pdf',3,'600MB','Margarida Mamede',36);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (925,'No more prerequisites please!','https://uva.onlinejudge.org/external/9/925.pdf',3,'600MB','Isabel Nunes',27);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (926,'Walking Around Wisely','https://uva.onlinejudge.org/external/9/926.pdf',3,'600MB','Fernando Silva',16);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (927,'Integer Sequences from Addition of Terms','https://uva.onlinejudge.org/external/9/927.pdf',3,'600MB','Delfim Marado Torres',6);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (928,'Eternal Truths','https://uva.onlinejudge.org/external/9/928.pdf',3,'600MB','Ana Paula Maldonado',19);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10805,'Cockroach Escape Networks','https://uva.onlinejudge.org/external/108/10805.pdf',3,'600MB','Igor Naverniouk (Abednego)',8);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10806,'Dijkstra Dijkstra','https://uva.onlinejudge.org/external/108/10806.pdf',3,'600MB','Igor Naverniouk (Abednego)',21);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10807,'Prim','https://uva.onlinejudge.org/external/108/10807.pdf',3,'600MB','Igor Naverniouk (Abednego)',38);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10808,'Rational Resistors','https://uva.onlinejudge.org/external/108/10808.pdf',3,'600MB','Igor Naverniouk (Abednego)',5);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10809,'Great Circle','https://uva.onlinejudge.org/external/108/10809.pdf',3,'600MB','Gordon V. Cormack',33);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10810,'Ultra-QuickSort','https://uva.onlinejudge.org/external/108/10810.pdf',3,'600MB','Stefan Büttcher',10);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10811,'Up the Ante','https://uva.onlinejudge.org/external/108/10811.pdf',3,'600MB','Gordon V. Cormack',4);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10812,'Beat the Spread!','https://uva.onlinejudge.org/external/108/10812.pdf',3,'600MB','Gordon V. Cormack',38);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10816,'Travel in Desert','https://uva.onlinejudge.org/external/108/10816.pdf',3,'600MB','Raymond Chun',19);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10817,'Headmasters Headache','https://uva.onlinejudge.org/external/108/10817.pdf',3,'600MB','Mak Yan Kei',9);
		INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES (10818,'Dora Trip','https://uva.onlinejudge.org/external/108/10818.pdf',3,'600MB','Mak Yan Kei',17);


		/*POBLAR COMENTARIOS*/
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Requiero ayuda en el problema 853',null,'srd98',853,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Como se implementa un grafo, AYUDA!!?',1,'Gabriel David',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'como se hace una matriz?',1,'Delfim Marado Torres',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'donde es la competencia del 12 de octubre?',1,'srd98',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'donde puedo aprender java?',9,'Pedro Guerreiro',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'como se hace una cola en c++?',9,'Fer',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'que es un grafo?',8,'Isabel Nunes',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'AYUDAAA!!!!, como aprendo python?',8,'Simao Melo de Sousa',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'como subo un problema?',1,'Raymond Chun',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'alguien quiere hacer equipo conmigo?',12,'Delfim Marado Torres',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'como me inscribo a un equipo?',7,'Pedro Guerreiro',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'como implemento un flujo?',16,'Fer',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'quien sabe dinamica??',6,'Jose Carlos Ramallo',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'alguien sabe como implemento sets en c++?',5,'Raymond Chun',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'cursos de java, informes en mi user',4,'Pedro Guerreiro',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'que es un arbol?',13,'Fernando Silva',null,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema824',null,'Simao Sousa',824,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema825',null,'Gabriel David',825,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema826',null,'Wilsson',826,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema827',null,'Anzola',827,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema828',null,'Nuno Preguica',828,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema829',null,'Jvargas',829,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema830',null,'Pedro Ribeiro',830,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema831',null,'CrkJohn',831,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema832',null,'Margarida Mamede',832,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema833',null,'Simao Sousa',833,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema834',null,'Jose Carlos Ramallo',834,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema835',null,'Margarida Mamede',835,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema836',null,'Margarida Mamede',836,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema837',null,'Amilcar Cardoso',837,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema838',null,'Nuno Preguica',838,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema839',null,'hquilo',839,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema840',null,'Simao Melo de Sousa',840,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema841',null,'Fer',841,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema842',null,'Pedro Henriques',842,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema843',null,'Nuno Preguica',843,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema844',null,'Jvargas',844,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema845',null,'David Mason Ryerson Polytech',845,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema846',null,'diegui',846,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema848',null,'Amilcar Cardoso',848,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema850',null,'CrkJohn',850,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema851',null,'Caph12',851,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema852',null,'Joao Marques',852,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema853',null,'KarenPaola',853,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema900',null,'Fernando Silva',900,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema901',null,'CrkJohn',901,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema902',null,'A. Augusto Sousa',902,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema903',null,'Delfim Marado Torres',903,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema904',null,'Miguel Filgueiras',904,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema905',null,'David Mason Ryerson Polytech',905,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema906',null,'yowis',906,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema907',null,'Igor Naverniouk (Abednego)',907,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema908',null,'Nico_Lo',908,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema909',null,'Mak Yan Kei',909,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema910',null,'Amilcar Cardoso',910,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema911',null,'anamaria1299',911,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema912',null,'Pedro Guerreiro',912,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema913',null,'Fer',913,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema914',null,'David Mason Ryerson Polytech',914,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema915',null,'Pedro Guerreiro',915,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema916',null,'Gabriel David',916,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema917',null,'Joao Marques',917,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema918',null,'Ana Paula Maldonado',918,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema919',null,'Wilsson',919,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema920',null,'Simao Sousa',920,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema921',null,'Margarida Mamede',921,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema922',null,'Joao Marques',922,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema923',null,'Jvargas',923,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema924',null,'Fer',924,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema925',null,'Pedro Guerreiro',925,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema926',null,'Nuno Preguica',926,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema927',null,'Ricardo Lopes',927,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema928',null,'David Mason Ryerson Polytech',928,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10805',null,'hquilo',10805,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10806',null,'Anzola',10806,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10807',null,'Fer',10807,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10808',null,'José Paulo Leal',10808,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10809',null,'A. Augusto Sousa',10809,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10810',null,'Pedro Henriques',10810,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10811',null,'Raymond Chun',10811,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10812',null,'hquilo',10812,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10816',null,'Cristina Ribeiro',10816,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10817',null,'Gabriel David',10817,null);
		INSERT INTO COMENTARIOS ( ID_COMENTARIO,EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ( seq_comentarios.nextval,'Ayuda!! problema10818',null,'Delfim Marado Torres',10818,null);

		/*POBLAR PRUEBAS*/	
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'22 25 2
		22 26 0
		21 26 1
		21 25 1
		21 24 1
		22 24 1
		23 24 1
		23 25 1
		23 26 0
		21 26 1
		21 27 1
		20 27 1
		20 26 1
		20 25 0
		21 25 1
		22 25 1
		22 26 0
		22 27 0
		21 27 0
		21 28 0
		20 28 1
		20 27 1
		20 26 1
		21 26 1
		22 26 0
		22 27 0
		22 28 0
		-1
		','
		1
		0
		1','*',824);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		4 5
		1
		2 2
		3 3 5
		4','4','*',825);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		*!30zx9bdk
		?z
		b
		!*?','d
		bz
		b
		!0','/',826);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		10 4
		A 70
		B 35
		C 80
		A 0
		D 60
		B 0
		','
		Hole:128
		Hole:64
		D:60
		C:80
		Hole:128
		Hole:512','*',827);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		RSAEIO
		2
		5
		RTSSKAEAGE
		GRSCAV
		RGSSCAV
		RUSIQO
		RUSSGAACEV JEGIITOOGR','RICE
		error in encryption
		EAT
		error in encryption
		SEAT HERE','*',828);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'
		1
		1 3 10 2 15 0 20 0 2 2 6 0 7 1 4 0 9 1 21 0
		1 3 10 2 15 0 20 0 2 2 9 0 7 1 4 0 6 1 21 0
		','1 6 9','*',829);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		16 12
		b...c.fgh...
		baabca.jkyyy
		...bcak..yyy
		....ca...yyy
		zzzzzz...uuu
		zzzzzz.s.uuu
		zzzzzzsssuuu
		.tttt.sssuuu
		ttttt.sssuuu
		.tttt.sss.u.
		.........hh.
		bbbb..fffhh.
		bbbb..fffhh.
		bbbbgggg.hh.
		bbbbgggg.ppp
		bbbbgggg.ppp','6 3 2 3 1 2 1 3','*',830);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		[memo[
		[de[ Comiss ao Cient fica do MIUP ]de]
		[para[ Todos os Concorrentes ]para]
		[data[{bold 2001.set.25}]data]
		[mensagem[
		[parag[Devem ter o m aximo cuidado na leitura dos enunciados.]parag]
		[parag[Desejamos a todos {desejo Calma} e {desejo Boa Sorte}!]parag]
		]mensagem]
		]memo]
		','STRUCTURAL TAGS
		memo
		de
		para
		data
		mensagem
		parag
		SEMANTIC TAGS
		bold
		desejo','*',831);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		2
		40000 3
		35000 32 61
		15000 45 72
		40000 97 123
		55000 4
		12000 10 52
		30000 32 64
		33000 44 73
		50000 62 94
		','11.85%','*',832);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		4
		14 7 3 4
		11 13 16 11
		1 10 6 7
		2 1 4 3
		3
		10 4
		14 14
		2 13
		','10
		16
		2','*',833);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'43 19
		1 2','[2;3,1,4]
		[0;2]','*',834);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1\n
		11
		1','11351
		14033
		30323
		53201
		13313
		11351
		33203
		30323
		14033
		33311
		13313
		13043
		32303
		50231
		13331','*',835);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1\n
		10111000
		00010100
		00111000
		00111010
		00111111
		01011110
		01011110
		00011110
		','16','*',836);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'
		1
		3
		2.0 2.0 9.0 2.0 0.9
		13.5 2.0 4.0 8.5 0.7
		17.0 10.0 7.0 8.5 0.8
		','7
		-inf 2.000 1.000
		2.000 4.000 0.900
		4.000 7.000 0.630
		7.000 9.000 0.504
		9.000 13.500 0.560
		13.500 17.000 0.800
		17.000 +inf 1.000','*',837);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		0 2 0 4
		0 3 0 1
		1 1 1 1
		2 4 4 2
		1 6 3 2','YES','*',839);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		2 2 4
		A-b B-a
		a-A b-B','/','*',840);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		4
		---o
		-x--
		-x--
		ox--
		','11','*',841);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		..........
		.....#....
		.#......#.
		....#..#..
		..##...#..
		..#.....##
		...#...#..
		..#..##...
		..#.......
		..#....#..
		aa ac al alao
		ali ap atencao
		atlanta camilo
		doar dr duo eam
		eis el epoca et
		icar ileso is
		la loto mal men
		merito mi no
		oaristo oo os pios
		resto roa roca rt
		sa senil si tule
		variedades verdadeiro','2','*',842);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'6
		and
		dick
		jane
		puff
		spot
		yertle
		bjvg xsb hxsn xsb qymm xsb rqat xsb pnetfn
		xxxx yyy zzzz www yyyy aaa bbbb ccc dddddd
		','dick and jane and puff and spot and yertle
		** * ** * ** * ** * **','*',843);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'
		2
		4
		L2
		T2
		L2
		B2
		R2
		QUIT
		4
		L2
		T2
		L2
		B2
		R2
		T1
		L2
		QUIT
		','TIE GAME
		X WINS','*',844);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'65.2
		76.7
		77.7
		.','65.5
		77.6
		The price cannot be raised.','*',845);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'3
		45 48
		45 49
		45 50
		','3
		3
		4','*',846);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'Unix fmt
		The unix fmt program reads lines of text, combining
		and breaking lines so as to create an
		output file with lines as close to without exceeding
		72 characters long as possible. The rules for combining and breaking
		lines are as follows.
		1. A new line may be started anywhere there is a space in the input.
		If a new line is started, there will be no trailing blanks at the
		end of the previous line or at the beginning of the new line.
		2. A line break in the input may be eliminated in the output, provided
		it is not followed by a space or another line break. If a line
		break is eliminated, it is replaced by a space.
		','Unix fmt
		The unix fmt program reads lines of text, combining and breaking lines
		so as to create an output file with lines as close to without exceeding
		72 characters long as possible. The rules for combining and breaking
		lines are as follows.
		1. A new line may be started anywhere there is a space in the
		input. If a new line is started, there will be no trailing blanks at
		the end of the previous line or at the beginning of the new line.
		2. A line break in the input may be eliminated in the output,
		provided it is not followed by a space or another line break. If a
		line break is eliminated, it is replaced by a space.','*',848);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		vtz ud xnm xugm itr pyy jttk gmv xt otgm xt xnm puk ti xnm fprxq
		xnm ceuob lrtzv ita hegfd tsmr xnm ypwq ktj
		frtjrpgguvj otvxmdxd prm iev prmvx xnmq','now is the time for all good men to come to the aid of the party
		the quick brown fox jumps over the lazy dog
		programming contests are fun arent they','*',850);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		4
		OO.O
		...O
		OO..
		O..O
		','east
		north','*',851);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'OX..XXO..
		OXX.XOO..
		OOXX.XO.O
		.OOX.XOO.
		..OOXXXOO
		..OO.X.XO
		..OOXX.XX
		..OX.X...
		..OXX....
		','Black 39 White 41','*',852);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'Sample Input
		1
		10
		Quero um copo de cerveja, bem fresca.
		Nao temos cerveja, mas temos vinho.
		Nao obrigado, vinho nao quero.
		Tambem temos sumo de laranja natural.
		Esta bem, entao quero um sumo de laranja.
		Mais alguma coisa?
		Sim, um pastel de nata.
		Com certeza. Um sumo e um pastel. Sao quatro euros.
		Quatro euros!!! Mas isso e um roubo.
		Se acha que e um roubo, chame a policia.
		I want a glass of beer, very cool.
		We dont have beer, but we have wine.
		No thanks, I dont want wine.
		We also have natural orange juice.
		OK, then I want one orange juice.
		Anything else?
		Yes, a cream cake.
		Of course. One juice and one cake. Thats four euros.
		Four euros!!! That is a theft.
		If you think it is a theft, call the police.
		','cerveja/beer
		euros quatro/euros four
		laranja/orange
		nao vinho/dont wine
		pastel/cake
		quero/want
		roubo/theft
		sumo/juice
		temos/have','*',853);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'1
		2
		3
		0','1
		2
		3
		0','*',900);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'S(#C,A,D)
		R(#A,B)
		T(E,A)
		data
		T(e1,a2)
		S(c3,a1,d1)
		S(c1,a2,d2)
		S(c2,a1,d3)
		R(a1,b1)
		R(a2,b2)','<DB>
		<R #A="a1" B="b1">
		<S #C="c2" D="d3">
		</S>
		<S #C="c3" D="d1">
		</S>
		</R>
		<R #A="a2" B="b2">
		<S #C="c1" D="d2">
		</S>
		<T E="e1">
		</T>
		</R>
		</DB>','*',901);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'3 baababacb
		','aba','*',902);
		
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'5
		1 1 1 3 3 3
		1 1 1 3 3 3
		1 1 1 3 3 3
		400000000 400000000 400000000 400000001 400000001 400000002
		400000000 400000000 400000000 400000002 400000004 400000001','9','*',904);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'3 3 7 6
		1 6
		1 2
		0
		1 6
		1 2
		1 5
		','3 3 7 6
		1 2
		0
		0
		1 7
		1 1
		1 6','*',905);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'96 145
		0.0001','49 74','*',906);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'4 3
		7
		2
		6
		4
		5
		','8','*',907);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'5
		1 2 5
		1 3 5
		1 4 5
		1 5 5
		1
		2 3 2
		6
		1 2 5
		1 3 5
		1 4 5
		1 5 5
		3 4 8
		4 5 8
		','20
		17','*',908);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'aaaaaaaarstqahbbbbbbb
		aaaaaaaaaa
		abcdefghij','[135]a[5]rstqah[134]b
		[137]a
		[9]abcdefghij','*',909);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'5
		A B E -
		B D C -
		C D A x
		D D B -
		E E E -
		5
		','3','*',910);
		INSERT INTO  PRUEBAS(ID_PRUEBA,INPUT_CASE,OUTPUT_CASE,PROPOSITO,ID_PROBLEMA) VALUES( seq_pruebas.nextval,'4
		3
		1 2 1
		7
		4
		2 3 0 2
		','12
		210','*',911);
