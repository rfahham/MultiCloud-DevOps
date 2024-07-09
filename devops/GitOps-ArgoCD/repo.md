# Criando um repositório git

Agora vamos criar um repósitorio git com as definições de um nginx conforme abaixo:

```bash
apiVersion: apps/v1
kind: Deployment
metadata:
  creationTimestamp: null
  labels:
    app: nginx
  name: nginx
  namespace: argocd
spec:
  replicas: 2
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - image: nginx
        name: nginx
```

Caso queira pode usar o repositório que criei para esse artigo segue o link.


Próximo passo... [Conexão](conexao.md)