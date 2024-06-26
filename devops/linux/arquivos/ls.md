# LS

Listar arquivos e diretórios


```bash
ls
OCI  README.md  aws  azure  devops  gcp  on-premises  projetos
```

## Lista os arquivos e suas características

```bash
ls -l

total 32
drwxr-xr-x  2 rfahham rfahham 4096 Jun 20 13:07 OCI
-rw-r--r--  1 rfahham rfahham  315 Jun 20 13:07 README.md
drwxr-xr-x  6 rfahham rfahham 4096 Jun 23 14:52 aws
drwxr-xr-x  2 rfahham rfahham 4096 Jun 20 13:07 azure
drwxr-xr-x 14 rfahham rfahham 4096 Jun 25 20:57 devops
drwxr-xr-x  2 rfahham rfahham 4096 Jun 20 13:07 gcp
drwxr-xr-x  3 rfahham rfahham 4096 Jun 21 11:18 on-premises
drwxr-xr-x  4 rfahham rfahham 4096 Jun 21 10:14 projetos
```

## Listar arquivos ocultos e suas características

```bash
ls -la

total 48
drwxr-xr-x 11 rfahham rfahham 4096 Jun 25 21:17 .
drwxr-xr-x  8 rfahham rfahham 4096 Jun 20 17:39 ..
drwxr-xr-x  8 rfahham rfahham 4096 Jun 25 20:56 .git
drwxr-xr-x  3 rfahham rfahham 4096 Jun 20 13:10 .github
drwxr-xr-x  2 rfahham rfahham 4096 Jun 20 13:07 OCI
-rw-r--r--  1 rfahham rfahham  315 Jun 20 13:07 README.md
drwxr-xr-x  6 rfahham rfahham 4096 Jun 23 14:52 aws
drwxr-xr-x  2 rfahham rfahham 4096 Jun 20 13:07 azure
drwxr-xr-x 14 rfahham rfahham 4096 Jun 25 20:57 devops
drwxr-xr-x  2 rfahham rfahham 4096 Jun 20 13:07 gcp
drwxr-xr-x  3 rfahham rfahham 4096 Jun 21 11:18 on-premises
drwxr-xr-x  4 rfahham rfahham 4096 Jun 21 10:14 projetos
```

## Mostra os arquivos em ordem alfabética

```bash
ls -lao
total 48
drwxr-xr-x 11 rfahham 4096 Jun 25 21:17 .
drwxr-xr-x  8 rfahham 4096 Jun 20 17:39 ..
drwxr-xr-x  8 rfahham 4096 Jun 25 20:56 .git
drwxr-xr-x  3 rfahham 4096 Jun 20 13:10 .github
drwxr-xr-x  2 rfahham 4096 Jun 20 13:07 OCI
-rw-r--r--  1 rfahham  315 Jun 20 13:07 README.md
drwxr-xr-x  6 rfahham 4096 Jun 23 14:52 aws
drwxr-xr-x  2 rfahham 4096 Jun 20 13:07 azure
drwxr-xr-x 14 rfahham 4096 Jun 25 20:57 devops
drwxr-xr-x  2 rfahham 4096 Jun 20 13:07 gcp
drwxr-xr-x  3 rfahham 4096 Jun 21 11:18 on-premises
drwxr-xr-x  4 rfahham 4096 Jun 21 10:14 projetos
```

Para mais detalhes

```bash
ls --help
```