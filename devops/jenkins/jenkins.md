# Jenkins

Construa grandes coisas em qualquer escala

O principal servidor de automação de código aberto, Jenkins, fornece centenas de plugins para dar suporte à criação, implantação e automação de qualquer projeto.

Desenvolvido em Java


Site Oficial: https://www.jenkins.io/

Documentação: https://www.jenkins.io/doc/

## Instalação

Linux

´´´bash
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins list > /dev/null

sudo apt-get update

sudo apt-get install jenkins

```

