# Install

## Linux

Certifique-se de que seu sistema esteja atualizado e que você tenha instalado os pacotes gnupg, software-properties-common, e curlinstalled. Você usará esses pacotes para verificar a assinatura GPG da HashiCorp e instalar o repositório de pacotes Debian da HashiCorp.

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```

Instale a chave GPG da HashiCorp 

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
```

Verifique a impressão digital da chave.

```bash
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
```

Adicione o repositório oficial da HashiCorp ao seu sistema. O lsb_release -cs comando encontra o codinome de lançamento da distribuição para seu sistema atual, como buster, groovy, ou sid.

```bash
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```

Baixe as informações do pacote da HashiCorp.

```bash
sudo apt update
```

Instale o Terraform a partir do novo repositório.

```bash
sudo apt-get install terraform
```

Verifique a instalação

Verifique se a instalação funcionou abrindo uma nova sessão de terminal e listando os subcomandos disponíveis do Terraform.

```bash
terraform -help
```

## MACOS

Primeiro, instale o HashiCorp tap, um repositório de todos os nossos pacotes Homebrew.

```bash
brew tap hashicorp/tap
```

Agora, instale o Terraform com hashicorp/tap/terraform.

```bash
brew install hashicorp/tap/terraform
```

Para atualizar para a versão mais recente do Terraform, primeiro atualize o Homebrew.

```bash
brew update
```

Em seguida, execute o upgradecomando para baixar e usar a versão mais recente do Terraform.

```bash
brew upgrade hashicorp/tap/terraform
```

Verifique a instalação
Verifique se a instalação funcionou abrindo uma nova sessão de terminal e listando os subcomandos disponíveis do Terraform.

```bash
terraform -help
```

