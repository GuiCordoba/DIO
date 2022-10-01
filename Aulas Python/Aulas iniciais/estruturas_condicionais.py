maior_idade = 18
IDADE_ESPECIAL = 12

idade = int(input('Informe sua idade: '))

if idade >= maior_idade:
    print('Maior de idade, ja pode tirar a CNH')

if idade < maior_idade:
    print('Ainda não pode tiar CNH')



if idade >= maior_idade:
    print('Maior de idade, ja pode tirar a CNH')
else:
    print('Ainda não pode tiar CNH')



if idade >= maior_idade:
    print('Maior de idade, ja pode tirar a CNH')
elif idade == IDADE_ESPECIAL:
    print('Pode fazer aulas teoricas mas nao pode aulas praticas')
else:
    print('Ainda não pode tiar CNH')






