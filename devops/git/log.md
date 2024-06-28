## LOG

Visualizar os logs

```bash
git log --oneline
```

Histórico por Data

Mostra o histórico de commits feitos antes ou após uma data:

```bash
git log --after="MMM DD YYYY"

git log --before="MMM DD YYYY"

```

Exemplo do formato usado nas datas: “Jul 07 2019”

## Histórico Baseado em uma Mensagem

Mostra o histórico de commits filtrado por uma mensagem

```bash
git log --grep produtos
```

Com esse comando teremos o histórico de commits em que a mensagem do commit possua a palavra “produtos”. O que passamos pode ser uma expressão regular, e podemos passar mais de uma:

Procurar por "produtos" OU "usuarios"

```bash
git log --grep produtos --grep usuarios
```

Procurar por "produtos" E "usuarios"

```bash
git log --grep produtos --and --grep usuarios
```
