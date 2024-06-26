# VARIÁVEIS DE AMBIENTE

https://videosdeti.com.br/linux-variaveis-de-ambiente/

Para declarar uma variável é muito simples, basta utilizar [ NOME_VARIAVEL=valor ] :

$ SITE=”https://videosdeti.com.br”

Quando precisar exibir o seu valor digite [ echo $NOME_VARIAVEL ] :

$ echo $SITE 
https://videosdeti.com.br

Criando uma variável global

comando [ export NOME_VARIAVEL=valor ]

export API_URL=”https://api.local/v3” 
export API_KEY="6f442323ht3770apr"

Ou ainda, poderá converter uma variável local já criada anteriormente em global:

export $SITE

para listar todas as variáveis use o comando [ set ]

set | less


$ env GROUP_NAME=be

# export GROUP_NAME=default

Editar o arquivo

cd /etc/profile.d

vi groot.sh

export GROUP_NAME=borda


Criando e chamando a variável

export var="conteúdo da variável"

Chamando a variável

$<nome da variável>

Exemplo:

$ GLBID="1795e4d4c76c06f08bce4f9be37b46b604f644835703031377a4674485334362d3078572d66713037764b6c6543544163596566716e4c506d434d76777769617868684e43346b356a61727557454d6c457365584f50386f4e50452d4673784e517967787341673d3d3a303a757468336468676438767566756377656e6e3735"

$ echo $GLBID

curl -v --location --request GET 'https://router.video.globo.com/cdn?video_id=8854733&player_type=desktop&video_type=Video&quality=max' --header 'Cookie: GLBID=$GLBID; locksession=66bi75fV3GLLt2sGowpemp' --header 'Content-Type: application/json'  
