Fazendo download de arquivos:

Vamos utilizar aqui a mídia de instalação da ultima versão do Ubuntu como exemplo. Para fazer o download de um arquivo, salvando com o mesmo nome do arquivo definido pelo servidor, basta usar a opção -O.

$ curl -O https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-desktop-amd64.iso

Você também pode esconder informações de progresso do download usando a opção -s:

curl -s -O https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-desktop-amd64.iso ubuntu20.iso

Ou definir uma barra de progresso simples ao invés da informação mais completa com -#:

curl -# -O https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-desktop-amd64.iso ubuntu20.iso
O progresso do download será mostrado da seguinte forma:


#############                                                             10.6%

Caso um download seja interrompido, é possível continuá-lo usando a opção -C (mesmo que não tenha sido iniciado com o curl):


curl -C - -O https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-desktop-amd64.iso
O hífen (-) após o 'C' indica ao curl para que ele descubra automaticamente onde/como continuar o download.


curl -O, fazer o download de um arquivo

curl -Os https://windows.gremlin.com/installer/latest/gremlin_installer.msi

curl -#O https://windows.gremlin.com/installer/latest/gremlin_installer.msi
