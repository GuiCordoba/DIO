valores = input().split()
tempo_viagem = int(valores[0])
velocidade_media = int(valores[1])

autonomia_carro = 12
km_total = tempo_viagem * velocidade_media
litros = km_total / autonomia_carro

print(f'{litros:.3f}')