# Inventory

O arquivo de inventário é um documento de configuração usado pelo Ansible para listar e organizar os hosts e grupos de servidores nos quais as tarefas e playbooks serão executados.

Ansible se comunica com nós remotos usando SSH para Unix/Linux sistemas e WinRM para sistemas Windows, permitindo segurança e gerenciamento eficiente de configurações e automações remotamente.

Examplo:

    [servers]
    server1 ansible_host=192.168.64.3

Ansible ping

```bash
ansible -i inventory.ini -m ping
```


