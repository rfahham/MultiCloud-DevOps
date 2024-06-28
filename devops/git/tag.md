## TAG

## Listar

```bash
git tag
```

Listar por Tags com um padrão específico

```bash
git tag -l "v1.8.5*"
```

## Criar

```bash
git tag -a v1.0.1 -m "Fixed a bug sending results to the Report"
```

## Subir (versionando)

```bash
git push origin --tags
```

## Show

Você pode ver os dados da tag juntamente com o commit onde ela foi realizada usando o comando git show

```bash
git show v1.4

	tag v1.4
	Tagger: Ben Straub <ben@straub.cc>
	Date:   Sat May 3 20:19:12 2014 -0700

	my version 1.4

	commit ca82a6dff817ec66f44342007202690a93763949
	Author: Scott Chacon <schacon@gee-mail.com>
	Date:   Mon Mar 17 21:52:11 2008 -0700

    changed the version number
```

## Apagar

Excluindo uma tag

Normalmente tags não são excluídas a menos que tenham sido geradas por engano!

Se for esse o seu caso, primeiro realize a exclusão local

```bash
git tag -d v1.0
```

e depois a exclusão no seu remote

```bash
git push --delete origem v1.0
```

```bash
$ gitshow v1.0
```