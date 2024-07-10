# Prometheus e Grafana em EC2 AWS

Criandos as instâncias

```bash
terraform init
```

```bash
terraform plan
```

```bash
terraform apply
```

    Outputs:

    instance_public_ips_grafana = [
    "3.91.77.162",
    ]
    instance_public_ips_prometheus = [
    "35.175.209.182",
    ]

## Para conectar as instâncias

```bash
ec2-user@ec2-3-91-77-162.compute-1.amazonaws.com

ec2-user@ec2-35-175-209-182.compute-1.amazonaws.com
```

## Instalando Grafana e Prometheus via Ansible

Crie um arquivo de inventário

```bash
sudo vim /etc/ansible/hosts
```
Adicione o seguinte conteúdo ao arquivo:

[local]
localhost ansible_connection=local
[prometheus]
ec2-user@ec2-35-175-209-182.compute-1.amazonaws.com

[grafana]
ec2-user@ec2-3-91-77-162.compute-1.amazonaws.com

Em seguida, crie um arquivo de configuração: sudo vi /etc/ansible/ansible.cfg

[defaults] 
inventory = /etc/ansible/hosts 


## Testando comunicação

Local

ansible 127.0.0.1 -m ping
[WARNING]: No inventory was parsed, only implicit localhost is available
127.0.0.1 | SUCCESS => {
    "changed": false,
    "ping": "pong"
}

Com as instâncias na AWS

```bash
ansible all -m ping

localhost | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
[WARNING]: Platform linux on host ec2-user@ec2-3-91-77-162.compute-1.amazonaws.com is using the discovered Python
interpreter at /usr/bin/python3.9, but future installation of another Python interpreter could change the meaning of
that path. See https://docs.ansible.com/ansible/2.10/reference_appendices/interpreter_discovery.html for more
information.
ec2-user@ec2-3-91-77-162.compute-1.amazonaws.com | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.9"
    },
    "changed": false,
    "ping": "pong"
}
[WARNING]: Platform linux on host ec2-user@ec2-35-175-209-182.compute-1.amazonaws.com is using the discovered Python
interpreter at /usr/bin/python3.9, but future installation of another Python interpreter could change the meaning of
that path. See https://docs.ansible.com/ansible/2.10/reference_appendices/interpreter_discovery.html for more
information.
ec2-user@ec2-35-175-209-182.compute-1.amazonaws.com | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.9"
    },
    "changed": false,
    "ping": "pong"
}

```

## Para remover o WARNING

Editar o arquivo de host e adicionar

[all:vars]
ansible_python_interpreter=/usr/bin/python3

[local]
localhost ansible_connection=local

```bash
ansible-playbook -i hosts playbook.yaml
```



```bash
terraform destroy
```