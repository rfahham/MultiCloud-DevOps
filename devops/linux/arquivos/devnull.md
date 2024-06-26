# DEVNULL

https://www.digitalocean.com/community/tutorials/dev-null-in-linux

/dev/null no Linux é um arquivo de dispositivo nulo. 

Isso descartará qualquer coisa gravada nele e retornará EOF na leitura.

Este é um hack de linha de comando que age como um vácuo, que suga qualquer coisa jogada nele.


Isso retornará um caractere de fim de arquivo ( EOF ) se você tentar lê-lo usando o comando cat .

cat /dev/null

Este é um arquivo válido, que pode ser verificado usando

stat /dev/null

Redirecionamento para /dev/null no Linux

echo 'Hello from JournalDev' > /dev/null

cat --INCORRECT_OPTION > /dev/null


Descartar mensagens de erro
Vamos redirecionar o stderr para /dev/null , junto com o stdout. Podemos usar o descritor de arquivo para stderr( =2 ) para isso.

cat --INCORRECT_OPTION > /dev/null 2>/dev/null

Isso nos dará o que precisamos!

Existe outra maneira de fazer o mesmo; redirecionando stderr para stdout primeiro e, em seguida, redirecionando stdout para /dev/null .

A sintaxe para isso será:

command > /dev/null 2>&1

Observe o 2>&1no final. Redirecionamos stderr( 2 ) para stdout( 1 ). Costumamos &1mencionar ao shell que o arquivo de destino é um descritor de arquivo e não um nome de arquivo.

cat --INCORRECT_OPTION > dev/null 2>&1

Portanto, se usarmos 2>1, redirecionaremos apenas stderrpara um arquivo chamado 1. Não é isso que queremos!