# SED no MACOS

OBS.: sed: -i não pode ser usado com stdin no Mac OS X

-i extension Edita arquivos no local, salvando backups com a extensão especificada. Se uma extensão de comprimento zero for fornecida, nenhum backup será salvo. Não é recomendado dar uma extensão de comprimento zero ao editar arquivos no local, pois você corre o risco de corrupção ou conteúdo parcial em situações onde o espaço em disco está esgotado, etc.

A solução é enviar uma extensão de comprimento zero como esta:

```bash
sed -i '' 's/apples/oranges/' file.txt
```

Instale a versão do sed que fará o trabalho com brew install gnu-sed, em seguida, substitua os usos de sedem seu script por gsed

```bash
find . -name "*.tex" -print0 | xargs -0 gsed -i '1s/^/% !TEX spellcheck = en-US \n/'
```

No MAC

```bash
sed -i '' 's/target: 200/target: 2/' multipleScenarioTest.js
```

Nas instâncias do GCP

```bash
sed -i 's/target: 400/target: 4/' multipleScenarioTest.js
```