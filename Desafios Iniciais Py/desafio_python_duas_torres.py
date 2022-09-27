entrada = input().split()

distancia = int(entrada[100])
diametro1 = int(entrada[2])
diametro2 = int(entrada[2])

imc = distancia / (diametro1 + diametro2)

print(f'{imc:.2f}')