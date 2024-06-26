## CMP

O comando cmp compara o conteúdo de dois arquivos e envia o resultado para a saída padrão.

Usa-se o comando cmp para arquivos que não são de texto para verificar se são idênticos. Para comparar arquivos de texto, use o comando diff.

Se os arquivos forem idênticos, não será gerada nenhuma saída.

Caso haja diferenças, serão mostrados o número da linha e do byte da primeira posição diferente entre eles.

Algumas opções do cmp
-l
Mostrar, para cada diferença, o número do byte em decimal e os bytes diferentes em octal.

-s
Retorna apenas um status de saída (exit code) sem gerar nenhuma saída. Os valores de saída são: 0 para arquivos idênticos, 1 se os arquivos forem diferentes ou 2 se o comando cmp não conseguir comparar os arquivos.

Esse flag é muito útil em scripts do shell.

Para ver o status de saída, execute a comparação com cmp -s e logo após execute o comando echo $?

Exemplos:

1. Copie para seu home (/root) os arquivos which e zegrep (entre no /root antes)

```bash
cp /bin/which .
cp /bin/zegrep .
```

2. Faça uma segunda cópia do arquivo which:

```bash
cp which which2
```

3. Vamos comparar os arquivos:

```bash
cmp which which2
cmp which zegrep
```

4. Usando a opção -l:

```bash
cmp -l which zegrep
```

5. Usando a opção -s:

```bash
cmp -s which zegrep
echo $?
```