# Instalando o Ansible

## LInux

```bash 
sudo apt update && sudo apt install ansible

ou 

yum install ansible
```



## MAC

```bash 
brew install ansible
```


Verifica playbooks ansible para práticas e comportamento

```bash 
brew install ansible-lint 
```

Execute várias operações relacionadas a funções e coleções.

```bash 
brew install software-properties-common
``` 

brew install ansible-galaxy

ansible-galaxy collection install google.cloud

## Verificando a versão

```bash 
ansible --version

ansible 2.10.8
  config file = None
  configured module search path = ['/home/rfahham/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.10.12 (main, Nov 20 2023, 15:14:05) [GCC 11.4.0]
```

