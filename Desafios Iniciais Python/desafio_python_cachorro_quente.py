valores = input().split()
total_cachorro_quente = int(valores[0])
total_participantes = int(valores[1])

media = total_cachorro_quente / total_participantes

print(f'{round(media,2)}')