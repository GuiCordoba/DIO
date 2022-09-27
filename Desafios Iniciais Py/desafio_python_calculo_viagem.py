'''
>Bootcamp Geração Tech Unimed-BH - Ciência de Dados
>Desafio 3/3 - Cálculo de Viagem.


>Segue o anunciado:
Rubens quer calcular e mostrar a quantidade de litros de combustível gastos em uma viagem de carro, sendo que seu carro faz 12 Km/l. Como ele não sabe fazer um programa que o auxilie nessa missão, ele te pede ajuda. Para efetuar o cálculo, deve-se fornecer o tempo gasto em horas na viagem e a velocidade média durante a mesma em km/h. Assim, você conseguirá passar para Rubens qual a distância percorrida e, em seguida, calcular quantos litros serão necessários para a viagem que ele quer fazer. Mostre o valor com 3 casas decimais após o ponto.
Entrada:
O arquivo de entrada contém dois inteiros. O primeiro é o tempo gasto na viagem em horas e o segundo é a velocidade média durante a mesma em km/h.
Saída:
Imprima a quantidade de litros necessária para realizar a viagem, com três dígitos após o ponto decimal.



>Solução:  
valores = input().split()
tempo_viagem = int(valores[0])
velocidade_media = int(valores[1])
'''

autonomia_carro = 12
km_total = tempo_viagem * velocidade_media
litros = km_total / autonomia_carro

print(f'{litros:.3f}')
