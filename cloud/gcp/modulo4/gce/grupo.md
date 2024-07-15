# Grupo de Instâncias

Execute o comando a seguir para criar uma MIG:

```bash
gcloud compute instance-groups managed create INSTANCE_GROUP_NAME --size=SIZE --template=INSTANCE_TEMPLATE
```

Substitua:

- INSTANCE_GROUP_NAME: o nome desse grupo de instâncias
- SIZE: o tamanho do grupo de instâncias
- INSTANCE_TEMPLATE: o nome do modelo de instância a ser usado para este grupo