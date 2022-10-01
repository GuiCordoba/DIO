nome = 'Guilherme'
idade = 25
profissao = 'Programador'
linguagem = 'Python'
saldo = 45.4256

dados = {'nome': 'Guilherme', 'idade': 25}

print('nome: %s idade: %s' % (nome, idade))
print('nome: {} idade: {}'.format(nome, idade))
print('nome: {1} idade: {0}'.format(idade, nome))
print('nome: {name} idade: {age}'.format(age = idade, name = nome))
print('Nome: {nome} Idade: {idade}'.format(**dados))

print(f'>Nome: {nome} Idade: {idade}')
print(f'>Nome: {nome} Idade: {idade} Saldo: {saldo:.2f}')



