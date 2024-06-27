# Trabalhando com Commit Semnântico

## Criar a branch

```bash
git checkout -b <nome da branch>
```

## Realizar as modificações

comitar usando ...

```bash
git commit -m ":tada: commit inicial"
```

## Exemplos para o Commit Semântico

    FIX - RESOLVE UM BUG
    FEAT - INICIA A IMPLEMENTAÇÃO DE UMA FUNCIONALIDADE
    CHORE - TRABALHO EM PROGRESSO DE UMA FUNCIONALIDADE
    REFACTOR -  SEM MUDAR LÓGICA - REFATORAÇÃO
    TEST - IMPLEMENTA TESTES AUTOMATIZADOS
    STYLE - MUDANÇAS DE FORMATAÇÃO DO CÓDIGO - LINT
    PERF - AJUSTES DE PERFORMANCE
    DOCS - INSERE DOCUMENTAÇÃO
    CI - AJUSTE NAS CONFIGURAÇÕES DO CI
    BUILD - AJUSTE NAS CONFIGURAÇÕES DE BUILD

```bash
git commit -m "FIX: commit inicial"
```