'''opcao = -1

while opcao != 0:
    opcao = int(input('[1] Sacar\n[2] Extrato\n[0] Sair\n>> '))

    if opcao == 1:
        print('Sacando...')

    elif opcao == 2:
        print('Exibindo extrato...')

print('Obrigado por usar nosso sistema bancario!')'''

while True:
    numero = int(input('Informe um número: '))

    if numero % 2 == 0:
        continue

    if numero == 15:
        break

    print(numero)


'''for numero in range(10):

    if numero % 2 == 0:
        continue


    print(numero, end=' ')'''



