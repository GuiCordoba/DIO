'''texto = input('Informe um texto: ')
VOGAIS = 'AEIOU'

for letra in texto:
    if letra.upper() in VOGAIS:
        print(letra, end='')

print()  # adiciona uma quebra de linha'''

texto = input('Informe um texto: ')
VOGAIS = 'AEIOU'

# exemplo utilizando um interavél
for letra in texto:
    if letra.upper() in VOGAIS:
        print(letra, end='')
else:
    print() # adiciona uma quebra de linha


# exemplo usando a função built-in range
for numero in range(0, 51, 5):
    print(numero, end=" ")