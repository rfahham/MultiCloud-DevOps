# Branch

## Listar

```bash
git branch -a
```

## Criar

```bash
git checkout -b minha-nova-branch
```

## Mudar

Para mudar para uma outra branch basta usar o comando checkout, passando o nome da branch.

```bash
git checkout <nome da branch>
```

## Renomear

Para renomear a sua atual branch local, execute o comando branch com a opção -m, passando o novo nome.

```bash
git branch -m novo-nome-da-branch
```

Se você estiver em uma branch e quiser renomear outra, você deve passar primeiro o nome atual da branch que quer renomear:

```bash
git branch -m nome-atual novo-nome
```

## Apagar

```bash
git branch -d nome-da-branch

```

OU 

```bash
git branch -D nome-da-branch
```
A opção -D ignora o estado da sua branch, forçando a sua remoção.