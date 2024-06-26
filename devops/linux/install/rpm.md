# RPM

https://phoenixnap.com/kb/how-to-install-rpm-file-centos-linux

Etapa 1: baixar o arquivo de instalação do RPM 

Etapa 2: instalar o arquivo RPM no Linux

$ sudo rpm -i <nome do arquivo>.rpm


Remover pacote RPM

$ sudo rpm -e <nome do arquivo>.rpm

A opção -e instrui o RPM a apagar o software. Verificar dependências de RPM  


Para verificar se há dependências no arquivo .rpm , use o seguinte comando:

$ sudo rpm -qpR sample_file.rpm

O sistema deve listar todas as dependências:

-q– Esta opção diz ao RPM para consultar o arquivo
-p– Esta opção permite especificar o pacote de destino a ser consultado
-R– Isso lista os requisitos para o pacote