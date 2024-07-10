class Cliente:
	def __init__(self, nome, email, plano):
		self.nome = nome
		self.email = email
		lista_planos = ["basic", "premium"]
		if plano in lista_planos:
			self.plano = plano
		else:
			raise Exception("Plano inválido")

cliente = Cliente("Ricardo Fahham", "rfahham@gmail.com", "premium")

print(cliente.nome)
print(cliente.email)
print(cliente.plano)