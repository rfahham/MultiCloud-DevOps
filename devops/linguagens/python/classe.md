# Classes

A programação em Python é conhecida por sua simplicidade e legibilidade, tornando-se uma escolha popular entre desenvolvedores iniciantes e experientes. Um conceito fundamental que você encontrará é o de classes no Python. 

As classes desempenham um papel importante e permitem aos desenvolvedores criar estruturas de dados personalizadas e sistemas modulares.

Ao dominar o uso de classes no Python, você será capaz de criar aplicativos mais eficientes e escaláveis, tirando proveito dos recursos avançados da linguagem. 

Neste artigo, mergulharemos no mundo das classes e exploraremos como elas podem ser usadas para melhorar a qualidade e a manutenção do seu código. 

## Vamos criar uma classe para Clientes da Netflix

```bash
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

Ricardo Fahham
rfahham@gmail.com
premium

```