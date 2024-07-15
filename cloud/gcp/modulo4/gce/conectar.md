# Conectar

```bash
gcloud compute ssh VM_NAME

ssh ricardo_fahham_g_globo@<ip da instância>

```

# Exemplos com diferentes clients ssh

```bash

gcloud compute ssh --zone "southamerica-east1-a" "gce-rfahham-lab1" --project "rfahham-dev"


ssh <ip_instancia> -i ~/.ssh/id_rsa -l nome_sobrenome_g_globo
ssh <ip_instancia> -i ~/.ssh/id_rsa -l nome_sobrenome_empresa_prestador_globo

ssh nome_sobrenome_g_globo@<ip_instancia> -i ~/.ssh/id_rsa
ssh nome_sobrenome_empresa_prestador_globo@<ip_instancia> -i ~/.ssh/id_rsa
```

[acesso_ssh](https://infra.globoi.com/omnicloud/gcp/acesso_ssh/)

Com o gcloud instalado e corretamente configurado, execute o seguinte comando para associar uma chave pública ao seu usuário do GCP:

gcloud compute os-login ssh-keys add --key-file=/home/user/.ssh/id_rsa.pub

Como se conectar a VMs

Como usar SSH para se conectar a instâncias
Execute o seguinte comando para se conectar a uma VM usando SSH:

gcloud compute ssh VM_NAME
Substitua VM_NAME pelo nome da VM.