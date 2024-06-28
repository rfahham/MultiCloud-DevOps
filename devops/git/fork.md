# Atualizar o fork

## Clonar o fork:

```bash
git clone gitlab@gitlab.globoi.com:qa2/taas-k6.git
```

## Adicionei um remote para o repositório original:

```bash
git remote add upstream gitlab@gitlab.globoi.com:devops/taas.git
```

## Atualizei o remote upstream

```bash
git fetch upstream
```

## Fiz o rebase do master com o master do upstream

```bash
git rebase upstream/master

git rebase --continue
```

## Pronto, agora repositório está atualizado. Agora toda vez que eu quiser atualizar a minha branch master com o repositório original eu uso:

```bash
git fetch upstream 
git rebase upstream/master
```

## E para fazer o push do repositório eu uso

```bash
git push origin master
```
