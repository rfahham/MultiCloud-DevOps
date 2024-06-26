# KILL

Matar processos

kill <numero do PID>


kill [sinal ou opção] pid

kill 9 <numero do PID>

Forçar o encerramento

Como Matar Múltiplos Processos
Com o mesmo comando, você pode matar vários processos. A sintaxe fica:

kill -9 pid1 pid2 pid3
Por exemplo:

kill -9 63772 45116 23465


Como Matar um Processo no Linux com o Comando Pkill

O Pkill é uma vertente do comando kill onde você pode especificar o nome do processo ou um padrão para encontrar o processo:

pkill chrome