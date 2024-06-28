# ROOLLBACK

Voltar para um commit 

```bash

git log --oneline

08b9af5 Fix double slash
c505a1c Add Support for Extensions
9918452 First Commit
27a63d2 Merge branch 'melhoria-readme-taas' into 'master'
887e101 (origin/melhoria-readme-taas) adicionado imagem ACL
53fe898 Merge branch 'feature/streaming' into 'master'
```

```bash
git restore --source <rash> .
```

```bash
git status
```

```bash
git commit <nome do arquivo> -m 'voltando para o comit tal'
```

```bash
git push
```