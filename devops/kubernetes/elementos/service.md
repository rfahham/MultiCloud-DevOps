# SERVICE

Responsável pela comunicação entre os PODS e as aplicações

Essa comunicação é realizada através da aplicação A com a aplicação B

São dos tipos:

- Cluster IP
    - Ponto único de comunicação com os pods.
    - Acesso Interno

- NodePort
    - Acesso externo
    - Utiliza um range de portas (30000-32767)
    - Utilizado em ambiente local por causa do IP público

- Load Balancer
    - Acesso pelo IP Público
    - O LB que direciona para o
    - Utilizado em Cloud Publica com mais falicidade