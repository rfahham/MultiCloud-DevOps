# TAIL

Mostra as linhas mais atuais de um arquivo (últimas)

```bash
tail -f <nome do arquivo>
```

head -n 1 nome_do_arquivo

tail -n 2 nome_do_arquivo

gcloud compute instances list | tail -n 1 | awk '{print $3}'

## Selecionar quantidade de linhas de um arquivo e criar um novo arquivo

cat 100klinhas.csv | tail -n 30000 > 30klinhas.csv