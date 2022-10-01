# -*- coding: utf-8 -*-
"""Tuplas em Python.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1m0U7XQ4tNWU6z3TIZYkrQVSiC0Zbw6xe

## Criação e Acesso aos dados
-Tuplas são IMUTAVEIS e deve-se adicionar uma virgula após o ultimo elemento da tupla
"""

# Criando uma tupla
frutas = ('Laranja', 'pera', 'uva',) #podemos criar dessa maneira ou indicando com o comendo 'tuple'

letras = tuple('Python') 

numeros = tuple([1, 2, 3, 4])

pais = ('Brasil',)

# Acesso aos dados
frutas = ('Laranja', 'pera', 'uva',)

print(frutas[0])
print(frutas[1])
print(frutas[-1])

# Matriz. Nesse caso são tuplas dentro de uma tupla
matriz = (
    (1, 'a', 2),
    ('b', 3, 4),
    (6, 5, 'c'),
)

print(matriz[0])
print(matriz[1][0])

# Fatiamento
tupla = ('p', 'y', 't', 'h', 'o', 'n')

print(tupla[0])
print(tupla[2:])
print(tupla[:2])
print(tupla[1:3])
print(tupla[0:3:2])
print(tupla[::])
print(tupla[::-1])

# Função iterar  
carros = ('Gol', 'Celta', 'Palio',)
for carro in carros:
    print(carro, end=', ')

# Função enumerate
carros = ('Gol', 'Celta', 'Palio',)
for indice, carro in enumerate (carros):
    print(f'{indice}:{carro}', end=' ')

"""## Métodos da classe tuple"""

# [].count
cores = ('Vermelho', 'Azul', 'Branco', 'Azul',)

print(cores.count('Vermelho'))
print(cores.count('Azul'))

# [].index. Encontra o priemiro ocorrencia do elemento na tupla
linguagens = ('Python', 'Java', 'c', 'csharp',)

print(linguagens.index('Python'))
print(linguagens.index('Java'))

# len. Usado para ver a quantidade de elementos que a  tupla tem
linguagens = ('Python', 'js', 'c', 'Java', 'csharp')

len(linguagens)