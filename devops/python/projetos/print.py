nome = "Ricardo"
sobrenome = "Fahham"
idade = 53

print("")
print("Meu nome é", nome, sobrenome, "e tenho", idade, "anos")
print("")

print(f"Meu nome é {nome} {sobrenome} e tenho {idade} anos")
print("")

print("Utilizando o Separador")
print("")

faturamento = 10000
custo = 6000
print("Faturamento", faturamento, sep=": ")
print("Custo", custo, sep=": ")
print("Lucro", faturamento - custo, sep=": ")
print("")


print("Faturamento:", faturamento, end="; ")
print("Custo:", custo, end="; ")
print("Lucro", faturamento - custo)

