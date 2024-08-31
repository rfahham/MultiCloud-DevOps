# Comandos básicos para o WSL

Neste artigo:

- Instalar
- Listar as distribuições do Linux disponíveis
- Listar distribuições do Linux instaladas
- Definir versão do WSL como 1 ou 2
- Mostrar mais 20

Os comandos do WSL abaixo são listados em um formato compatível com o Prompt de Comando do Windows ou PowerShell. Para executar esses comandos em uma linha de comando Bash/de distribuição do Linux, você deve substituir wsl por wsl.exe. Para ver a lista completa de comandos, execute wsl --help. Se você ainda não fez isso, recomendamos atualizar para a versão do WSL instalada da Microsoft Store para receber atualizações do WSL assim que elas estiverem disponíveis. (Saiba mais sobre como instalar o WSL por meio da Microsoft Store.).

Instalar

```bash
wsl --install
```

Instale o WSL e a distribuição Ubuntu padrão do Linux. Saiba mais. Você também pode usar esse comando para instalar outras distribuições do Linux executando wsl --install <Distribution Name>. Para ver uma lista válida de nomes de distribuição, execute wsl --list --online.

As opções incluem:

--distribution: especificar a distribuição do Linux a ser instalada. Você pode encontrar distribuições disponíveis executando wsl --list --online.
--no-launch: instalar a distribuição do Linux, mas não a iniciar automaticamente.
--web-download: instalar de uma origem online em vez de usar a Microsoft Store.
Quando o WSL não está instalado, as opções incluem:

--inbox: instala o WSL usando o componente do Windows em vez de usar a Microsoft Store. (As atualizações do WSL serão recebidas por meio de atualizações do Windows, em vez de enviadas por push conforme disponível por meio da loja).
--enable-wsl1: habilita o WSL 1 durante a instalação da versão da Microsoft Store do WSL, habilitando também o componente opcional "Subsistema do Windows para Linux".
--no-distribution: não instalar uma distribuição ao instalar o WSL.
 Observação

Caso você execute o WSL no Windows 10 ou em uma versão mais antiga, talvez precise incluir o sinalizador -d com o comando --install para especificar uma distribuição: wsl --install -d <distribution name>.

## Listar as distribuições do Linux disponíveis

```bash
wsl --list --online
```
Veja uma lista das distribuições do Linux disponíveis na loja online. Esse comando também pode ser inserido como: wsl -l -o.

## Listar distribuições do Linux instaladas


```bash
wsl --list --verbose
```

Veja uma lista das distribuições do Linux instaladas no seu computador Windows, incluindo o estado (se a distribuição está em execução ou parada) e a versão do WSL que executa a distribuição (WSL 1 ou WSL 2). Comparação entre o WSL 1 e o WSL 2. Esse comando também pode ser inserido como: wsl -l -v. Opções adicionais que podem ser usadas com o comando listar incluem: --all para listar todas as distribuições, --running para listar somente as distribuições que estão em execução no momento ou --quiet para mostrar somente nomes de distribuição.

Definir versão do WSL como 1 ou 2

```bash
wsl --set-version <distribution name> <versionNumber>
```
Para designar a versão do WSL (1 ou 2) em que uma distribuição do Linux está em execução, substitua <distribution name> pelo nome da distribuição e substitua <versionNumber> por 1 ou 

2. Comparação entre o WSL 1 e o WSL 2. O WSL 2 só está disponível no Windows 11 ou no Windows 10, versão 1903, build 18362 ou superior.

> Aviso

Alternar entre o WSL 1 e o WSL 2 pode ser demorado e resultar em falhas devido às diferenças entre as duas arquiteturas. Para distribuições com projetos grandes, recomendamos fazer backup de arquivos antes de tentar uma conversão.

Definir versão padrão do WSL

```bash
wsl --set-default-version <Version>
```

Para definir uma versão padrão do WSL 1 ou do WSL 2, substitua <Version> pelo número 1 ou 2. Por exemplo, wsl --set-default-version 2. O número representa a versão do WSL a fim de usá-la como padrão para novas instalações de distribuição Linux. Comparação entre o WSL 1 e o WSL 2. O WSL 2 só está disponível no Windows 11 ou no Windows 10, versão 1903, build 18362 ou superior.

Definir distribuição padrão do Linux

```bash
wsl --set-default <Distribution Name>
```
Para definir a distribuição padrão do Linux que os comandos do WSL usarão para executar, substitua <Distribution Name> pelo nome da sua distribuição preferida do Linux.

Alterar o diretório para a página inicial

```bash
wsl ~
```

O ~ pode ser usado com wsl para iniciar no diretório base do usuário. Para ir de qualquer diretório de volta para a base de dentro de um prompt de comando do WSL, você pode usar este comando: cd ~.

Executar uma distribuição específica do Linux no PowerShell ou no CMD

Copiar
```bash
wsl --distribution <Distribution Name> --user <User Name>
```

Para executar uma distribuição específica do Linux com um usuário específico, substitua <Distribution Name> pelo nome da sua distribuição preferida do Linux (por exemplo Debian) e <User Name> pelo nome de um usuário existente (ou seja, raiz). Se o usuário não existir na distribuição do WSL, você receberá um erro. Para imprimir o nome de usuário atual, use o comando whoami.

Atualizar o WSL

```bash
wsl --update
```
Atualize sua versão do WSL para a versão mais recente. As opções incluem:

--web-download: baixe a atualização mais recente do GitHub em vez da Microsoft Store.
Verificar o status do WSL

```bash
wsl --status
```
Veja informações gerais sobre a configuração do WSL, como tipo de distribuição padrão, a distribuição padrão e a versão do kernel.

Verificar a versão do WSL

```bash
wsl --version
```

Verifique as informações de versão do WSL e seus componentes.

Comando Help

```bash
wsl --help
```

Veja uma lista de opções e comandos disponíveis com o WSL.

Execute como um usuário específico

```bash
wsl --user <Username>
```

Para executar o WSL como um usuário especificado, substitua <Username> pelo nome de um usuário que existe na distribuição do WSL.

Alterar o usuário padrão para uma distribuição

```bash
<DistributionName> config --default-user <Username>
```

Altere o usuário padrão para seu logon de distribuição. O usuário já deve existir dentro da distribuição para se tornar o usuário padrão.

Por exemplo: ubuntu config --default-user johndoe alteraria o usuário padrão para a distribuição do Ubuntu para o usuário "davibarros".

 Observação

Se você estiver tendo problemas para descobrir o nome da sua distribuição, use o comando wsl -l.

 Aviso

Esse comando não funcionará em distribuições importadas, pois essas distribuições não têm um inicializador executável. Em vez disso, você pode alterar o usuário padrão para distribuições importadas usando o arquivo /etc/wsl.conf. Confira as opções de Montagem Automática no documento Definição de configurações avançadas.

Shutdown

```bash
wsl --shutdown
```
Encerra imediatamente todas as distribuições em execução e a máquina virtual do utilitário leve do WSL 2. Esse comando pode ser necessário em instâncias que exigem que você reinicie o ambiente de máquina virtual do WSL 2, como na alteração dos limites de uso de memória ou ao fazer uma alteração no arquivo .wslconfig.

Terminate

```bash
wsl --terminate <Distribution Name>
```

Para encerrar a distribuição especificada ou impedir que ela seja executada, substitua <Distribution Name> pelo nome da distribuição de destino.

Identificar o endereço IP
wsl hostname -I: Retorna o endereço IP da sua distribuição Linux instalada via WSL 2 (o endereço da VM WSL 2)
ip route show | grep -i default | awk '{ print $3}': Retorna o endereço IP do computador Windows conforme visto do WSL 2 (a VM do WSL 2)
Para obter uma explicação mais detalhada, consulte Acesso a aplicativos de rede com WSL: Identificar Endereço IP.

Exportar uma distribuição

```bash
wsl --export <Distribution Name> <FileName>
```

Exporta um instantâneo da distribuição especificada como um novo arquivo de distribuição. Padrões para o formato tar. O nome de arquivo pode ser - para a entrada padrão. As opções incluem:

--vhd: especifica que a distribuição de exportação deve ser um arquivo .vhdx em vez de um arquivo tar (isso só tem suporte usando o WSL 2)
Importar uma distribuição

```bash
wsl --import <Distribution Name> <InstallLocation> <FileName>
```
Importa o arquivo tar especificado como uma nova distribuição. O nome de arquivo pode ser - para a entrada padrão. As opções incluem:

--vhd: especifica que a distribuição de importação deve ser um arquivo .vhdx em vez de um arquivo tar (isso só tem suporte usando o WSL 2)
--version <1/2>: especifica a distribuição deve ser importada como uma distribuição do WSL 1 ou WSL 2
Importar uma distribuição em vigor

```bash
wsl --import-in-place <Distribution Name> <FileName>
```

Importa o arquivo .vhdx especificado como uma nova distribuição. O disco rígido virtual deve ser formatado no tipo de sistema de arquivos ext4.

Cancelar o registro ou desinstalar uma distribuição do Linux
Embora as distribuições do Linux possam ser instaladas por meio da Microsoft Store, elas não podem ser desinstaladas por meio da loja.

Para cancelar o registro e desinstalar uma distribuição do WSL:

```bash
wsl --unregister <DistributionName>
```

Substituir <DistributionName> pelo nome da distribuição do Linux de destino cancelará o registro dessa distribuição do WSL para que ela possa ser reinstalada ou limpa. Atenção: após o cancelamento do registro, todos os dados, configurações e softwares associados a essa distribuição serão permanentemente perdidos. A reinstalação pela loja instalará uma cópia limpa da distribuição. Por exemplo, wsl --unregister Ubuntu removeria o Ubuntu das distribuições disponíveis no WSL. A execução de wsl --list revelará que ele não está mais listado.

Você também pode desinstalar o aplicativo de distribuição do Linux em seu computador Windows assim como faz com qualquer outro aplicativo do repositório. Para reinstalar, localize a distribuição na Microsoft Store e selecione "Iniciar".

Montar um disco ou dispositivo

```bash
wsl --mount <DiskPath>
```

Anexe e monte um disco físico em todas as distribuições do WSL2 substituindo <DiskPath> pelo caminho diretório\arquivo em que o disco está localizado. Confira montar um disco do Linux no WSL 2. As opções incluem:

--vhd: especifica que <Disk> se refere a um disco rígido virtual.
--name: monte o disco usando um nome personalizado para o ponto de montagem
--bare: anexar o disco ao WSL2, mas não o montar.
--type <Filesystem>: tipo do sistema de arquivos a ser usado ao montar um disco. Caso não seja especificado, o padrão será ext4. Esse comando também pode ser inserido como: wsl --mount -t <Filesystem>. Você pode detectar o tipo do sistema de arquivos usando o comando: blkid <BlockDevice>, por exemplo: blkid <dev/sdb1>.
--partition <Partition Number>: número de índice da partição a ser montada; se não for especificado, o padrão será o disco inteiro.
--options <MountOptions>: há algumas opções específicas do sistema de arquivos que podem ser incluídas durante a montagem de um disco. Por exemplo, opções de montagem do ext4 como wsl --mount -o "data-ordered" ou wsl --mount -o "data=writeback. No entanto, somente as opções específicas do sistema de arquivos têm suporte no momento. Não há suporte para opções genéricas, como ro, rw ou noatime.
 Observação

Se você estiver executando um processo de 32 bits para acessar o wsl.exe (uma ferramenta de 64 bits), talvez seja necessário executar o comando da seguinte maneira: C:\Windows\Sysnative\wsl.exe --command.

Desmontar discos

```bash
wsl --unmount <DiskPath>
```

Desmonte um disco especificado no caminho do disco; se nenhum caminho de disco for fornecido, esse comando desmontará e desanexará TODOS os discos montados.

Comandos do WSL preteridos

```bash
wslconfig.exe [Argument] [Options]
```

```bash
bash [Options]
```

```bash
lxrun /[Argument]
```

Esses comandos eram a sintaxe wsl original para configurar as distribuições do Linux instaladas com o WSL, mas foram substituídas pela sintaxe de comando wsl ou wsl.exe.