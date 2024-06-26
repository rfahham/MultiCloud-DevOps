# While Curl

Ao invés de ficar apertando para cima e repetindo o comando do #curl para testar algum balanceamento, porque não utilizar das funcionalidades do próprio curl?

Se quisermos acessar 5 vezes o mesmo endereço podemos colocar a URL entre aspas seguido de um sustenido e uma "expansão" - de 1 até 5.

O sustenido é um símbolo válido para uma URL e indica uma âncora, um trecho dentro da própria página, quando clicamos em um deles a página não é recarregada.

```bash
curl -skI https://www.globo.com\#\[\1-5\] | grep -E 'HTTP|server'

curl -skI https://www.globo.com\#\[\1-5] | grep -E 'HTTP|server' | wc -l

curl -skI https://www.globo.com#[1-5] | grep -E 'HTTP|server'
```

Para quem usa ZSH substitui [1-5] por {1..5}