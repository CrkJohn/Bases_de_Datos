from sys import stdin
import random

def main():
    lis= ['anamaria1299', 'CrkJohn', 'srd98', 'yowis', 'diegui', 'Jvargas', 'Amilcar Cardoso', 'Cristina Ribeiro', 'Delfim Marado Torres', 'Fernando Silva', 'Isabel Nunes', 'Miguel Filgueiras', 'Pedro Guerreiro', 'Pedro Henriques', 'José Paulo Leal', 'A. Augusto Sousa', 'Gabriel David', 'Gordon V. Cormack', 'David Mason Ryerson Polytech', 'Piotr Rudnicki', 'Ricardo Lopes', 'Joao Marques', 'Jose Carlos Ramallo', 'Simao Sousa', 'Pedro Ribeiro', 'Ana Paula Tomas', 'Simao Melo de Sousa', 'Nuno Preguica', 'Margarida Mamede', 'Ana Paula Maldonado', 'Igor Naverniouk (Abednego)', 'Stefan Büttcher', 'Raymond Chun', 'Mak Yan Kei', 'Fer', 'Wilsson', 'Caph12', 'Anzola', 'KarenPaola', 'hquilo', 'Nico_Lo']
    lis1= ['824', '825', '826', '827', '828', '829', '830', '831', '832', '833', '834', '835', '836', '837', '838', '839', '840', '841', '842', '843', '844', '845', '846', '848', '850', '851', '852', '853', '900', '901', '902', '903', '904', '905', '906', '907', '908', '909', '910', '911', '912', '913', '914', '915', '916', '917', '918', '919', '920', '921', '922', '923', '924', '925', '926', '927', '928', '10805', '10806', '10807', '10808', '10809', '10810', '10811', '10812', '10816', '10817', '10818']
    for i in lis1:
        print("INSERT INTO COMENTARIOS (EXPLICACION,GRUPO,USUARIO,PROBLEMA,ID_COMENTARIO_RESPUESTA) VALUES ('Ayuda!! problema"+i+"',null,'"+random.choice(lis)+"',"+i+",null);")
main()
