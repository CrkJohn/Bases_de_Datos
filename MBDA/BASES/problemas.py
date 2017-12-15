from sys import stdin
import random

def main():
    n= stdin.readline().split(',')
    while n:
        x= random.randint(1, 38)
        print('INSERT INTO PROBLEMAS (ID_PROBLEMA,NOMBRE,PDF,TIEMPO,MEMORIA,CREADOR,TEMA) VALUES ('+n[0]+",'"+n[1]+"',"+"'https://uva.onlinejudge.org/external/"+'108'+'/'+n[0]+".pdf'"+",3,'"+"600MB',"+"'"+n[2]+"',"+str(x)+');')
        n= stdin.readline().split(',')
main()
