#Operadores Logicos 

print(True and True)
print(True and False)
print(False and False)
print(True or True)
print(True or False)
print(False or False)

# Usando parenteses 

saldo = 1000
saque = 1000
limite = 200
conta_especial = True

exp = saldo >= saque and saque <= limite or conta_especial and saldo >= saque
print(exp)

exp_2 =(saldo >= saque and saque <= limite) or (conta_especial and saldo >= saque)
print(exp_2)

# ou podemos quebrar a expreção em duas

conta_normal_com_saldo_susficiente = saldo >= saque and saque <= limite
conta_especial_com_saldo_sufisciente = conta_especial and saldo >= saque

exp_3 = conta_normal_com_saldo_susficiente or conta_especial_com_saldo_sufisciente
print(exp_3)