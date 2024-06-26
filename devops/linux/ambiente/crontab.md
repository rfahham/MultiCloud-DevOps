# Crontab

O crontab seria um arquivo utilizado para agendamento de tarefas de comandos, com o objetivo de que sejam executados em um determinado intervalo de tempo, como foi especificado na resposta.

```bash
sudo crontab -e
```bash

Dentro desse arquivo, temos a possibilidade de configurá-lo para executar o script de acordo com a nossa necessidade. Algumas informações são mostradas para nós, por exemplo, é mostrado um modelo de como configurar um script para que ele seja executado toda semana, às 5 horas da manhã:

    m h  dom mon dow      command

        m : minutos
        h : horas
        dom : dia do mês
        mon : mês
        dow : dia da semana
        command : caminho completo para o script 

Faremos um exemplo. Se quisermos que o script seja executado a cada dois minutos, faríamos dessa forma:

```bash
 */2 * * * * /home/rafael/Scripts/monitoracao-servidor.sh
```

Agora que vimos que nosso script é capaz de reinicializar o servidor, vamos mudar o nível de permissão, dando permissão de execução para que o crontab possa assim executar nosso script. No diretório de Scripts, coloque:

```bash
chmod +x monitoracao-servidor.sh
```

Na sequência, nós precisamos fazer o agendamento para que esse script seja executado em um determinado intervalo de tempo. Usaremos o crontab para isso, digite:

```bash
sudo crontab -e
```bash
