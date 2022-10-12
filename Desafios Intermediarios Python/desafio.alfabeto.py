'''
Bootcamp Geração Tech Unimed-BH - Ciência de Dados
>Desafio 1/3 -Alfabeto

Dada a letra N do alfabeto, nos diga qual a sua posição.
>Entrada
Um único caracter N, uma letra maiúscula ('A'-'Z') do alfabeto (que contém 26 letras).
>Saída
Um único inteiro, que representa a posição da letra no alfabeto.
--------------------------------------------
| Exemplo de Entrada | Exemplo de Saída    |
--------------------------------------------
| C                  | 3                   |
--------------------------------------------
| J                  | 10                  |
--------------------------------------------
| Z                  | 26                  |
--------------------------------------------
| A                  | 1                   |
--------------------------------------------
>Solução abaixo:
'''
letra = input()
letra.upper()

alfabeto = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'K', 'R', 'S', 'T', 'U', 'V', 'X', 'W', 'Y', 'Z']

print(alfabeto.index(letra)+1)