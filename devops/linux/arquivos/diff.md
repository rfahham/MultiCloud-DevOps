# DIFF

Podemos comparar arquivos de texto com o comando diff (mas não arquivos binários).

A saída do comando diff traz as seguintes informações:

Linhas que são diferentes no primeiro arquivo
Código de ação: “O que deve ser feito para que os arquivos se tornem idênticos”: a para adicionar linhas após, c para modificar linhas e d para excluir linhas.
Linhas que são diferentes no segundo arquivo.

Alguns flags úteis:

-b
Considerar que mais de um espaço ou tabulações sejam consideradas como um único caractere.

-i
Comparar os arquivos ignorando maiúsculas e minúsculas.

-l
Para gerar saída formatada, com um sumário no final.

-w
Ignorar todos os caracteres de espaço e tabulação.

Exemplo:

1. Execute o comando a seguir para comparar os arquivos teste-comm e teste-comm2:

# diff teste-comm teste-comm2
Será retornado o resultado a seguir:

3c3
< Mutum
---
> Gaivota
Isso significa que devemos modificar a linha 3 no primeiro arquivo pela linha 3 do segundo para que se tornem idênticos. Ou seja, alterar Mutum para Gaivota.

2. Vamos introduzir mais modificações nos arquivos. Em teste-comm acrescente a linha “João-de-Barro” antes de Mutum, e rode novamente o teste:

# diff teste-comm teste-comm2
Aparecerá o resultado a seguir:

3,4c3
< Mutum
---
> Gaivota
Significa: “modifique as linhas de 3 a 4 no arquivo1 para o valor da linha 3 do arquivo2, assim eles ficarão idênticos”.

3. Modifiquemos agora o arquivo teste-comm2. Acrescente a linha “Tico-tico” antes do Tucano e rode o teste novamente:

# diff teste-comm teste-comm2
Aparecerá o resultado a seguir:

3,4c3
< João-de-Barrp
< Mutum
---
> Gaivota
6a6
> Tico-tico

Significa: “modifique as linhas de 3 a 4 no arquivo1 para o valor da linha 3 do arquivo2, e adicione após a linha 6 do arquivo 1 o conteúdo da linha 6 do arquvo 2, assim eles ficarão idênticos”.

Para entender melhor essa saída, limpe a tela e digite os comandos a seguir para exibir o conteúdo dos dois arquivos e contar a linhas para compará-las:

	# cat teste-comm
	# cat teste-comm2

Veja que adicionando após a sexta linha de teste-comm (Sabiá) a palavra Tico-tico, o arquivo ficará idêntico ao teste-comm2, cuja 6 linha é a palavra Tico-tico também.

4. Podemos também usar o comando diff para comparar o conteúdo em dois diretórios distintos. Para isso, crie os diretórios dir1 e dir2:

	# mkdir dir1 dir2
	# ls

5. Copie os arquivos teste-comm e teste-comm2 para ambos os diretórios:

	# cp teste* ./dir1
	# cp teste* ./dir2

	# ls ./dir1
	# ls ./dir2
6. Rode a comparação entre os diretórios com o diff:

	# diff dir1 dir2
Nada aparecerá, pois ambos possuem o mesmo conteúdo. Agora apague teste-comm2 do diretório dir2:

	# rm ./dir2/teste-comm2
	# ls ./dir2

E rode novamente a comparação:

# diff dir1 dir2

Aparecerá a mensagem: “Somente em dir1: teste-comm2“, indicando que esse arquivo só está presente no diretório dir1.

Com a opção -s podemos ver quais arquivos são idênticos também:

	# diff -s dir1 dir2