'''
Bootcamp Geração Tech Unimed-BH - Ciência de Dados
>Desafio 3/3 -Aumento Salarial

A empresa que você trabalha resolveu conceder um aumento salarial a todos funcionários, de acordo com a tabela abaixo:
--------------------------------------------------
| Salário            | Percentual de Reajuste    |
--------------------------------------------------
| 0 - 600.00         | 17%                       |
--------------------------------------------------
| 600.01 - 900.00    | 13%                       |
--------------------------------------------------
| 900.01 - 1500.00   | 12%                       |
--------------------------------------------------
| 1500.01 - 2000.00  | 10%                       |
--------------------------------------------------
| Acima de 2000.00   | 5%                        |
--------------------------------------------------
Leia o salário do funcionário e calcule e mostre o novo salário, bem como o valor de reajuste ganho e o índice reajustado, em percentual.
A entrada contém apenas um valor de ponto flutuante, que pode ser maior ou igual a zero, com duas casas decimais, conforme exemplos abaixo.
>Exemplo 1
-----------------------------------------------------------------------------------------
| Exemplo de Entrada |                              Saída                               |
-----------------------------------------------------------------------------------------
| 1000               | Novo salario: 1120,00 Reajuste ganho: 120,00 Em percentual: 12 % |
-----------------------------------------------------------------------------------------
>Exemplo 2
-----------------------------------------------------------------------------------------
| Exemplo de Entrada |                              Saída                               |
-----------------------------------------------------------------------------------------
| 2000               | Novo salario: 2200,00 Reajuste ganho: 200,00 Em percentual: 10 % |
-----------------------------------------------------------------------------------------
>Solução abaixo:
'''
salario = int(input()) 

def mostar_mensagem(novo_salario, reajuste, percentual):
    print(f'Novo salario: {novo_salario:.2f}\nReajuste ganho: {reajuste:.2f}\nEm percentual: {percentual}')
    
    
def calculo_salario(salario):
    if (salario > 0 and salario <= 600 ):
        reajuste = salario * 0.17
        percentual = '17 %'
    elif (salario > 600 and salario <= 900):
        reajuste = salario * 0.13
        percentual = '13 %'
    
    elif (salario > 900  and salario <= 1500):
        reajuste = salario * 0.12
        percentual = '12 %'
    
    elif (salario > 1500 and  salario <= 2000):
        reajuste = salario * 0.10
        percentual = '10 %'
    
    else: 
        reajuste = salario * 0.05
        percentual = '5 %'
    novo_salario = reajuste + salario
    return novo_salario, reajuste, percentual
    
calculo = calculo_salario(salario)
mostar_mensagem(float(calculo[0]), float(calculo[1]), (calculo[2]))