### Resumo do Laboratório: Gataria via Helm

Neste laboratório, configuramos a aplicação Gataria utilizando Helm para gerenciar os recursos Kubernetes, facilitando deployments, rollbacks e mantendo um histórico dos mesmos.

#### Instalação do Helm
1. **Instalação do Helm**: Seguindo a documentação oficial, instalamos o Helm no ambiente local.
2. **Navegação pelos Helm charts públicos**: Exploramos charts públicos disponíveis para entender seu funcionamento.

#### Criação dos Helm Charts para Gataria
1. **Frontend**: Criamos um Helm chart para o frontend da Gataria (`helm create gataria-frontend`).
2. **Backend Catalog**: Criamos um Helm chart para o backend catalog (`helm create gataria-backend-catalog`).
3. **Backend Images**: Criamos um Helm chart para o backend images (`helm create gataria-backend-images`).

#### Configuração do NGINX Ingress
1. **Instalação do NGINX Ingress**: Utilizamos um Helm chart público para instalar o NGINX Ingress, configurando-o para balancear requests e organizar via DNS.
2. **Configuração do DNS local**: Atualizamos o arquivo `/etc/hosts` para simular um DNS local.
3. **Exposição de Serviços via Ingress**: Atualizamos os charts dos serviços frontend e backend para expor aplicações via Ingress.

#### Mudança para ClusterIP
1. **Atualização dos Charts para ClusterIP**: Alteramos as configurações dos serviços de NodePort para ClusterIP.

#### Utilização do ChartMuseum
1. **Instalação do ChartMuseum**: Instalamos o ChartMuseum via Helm para gerenciar os charts remotamente.
2. **Push dos Helm Charts**: Subimos os charts da Gataria para o ChartMuseum, permitindo a instalação a partir deste repositório remoto.

#### Configuração do HPA (Horizontal Pod Autoscaler)
1. **Instalação do Metrics Server**: Instalamos o Metrics Server para fornecer métricas necessárias ao HPA.
2. **Definição de Resource Limits**: Configuramos limites de CPU e memória nos pods.
3. **Teste do HPA**: Simulamos carga para testar o autoescalamento dos pods.

#### Conclusão
O laboratório foi concluído com sucesso, configurando a Gataria totalmente via Helm, com recursos de Ingress e HPA implementados, e utilizando o ChartMuseum para gerenciar os charts remotamente. Próximo labs CI/CD com Github Actions. 20% de desconto no bootcamp do profº Paulo Henrique de Morais Santiago usando o Cupom RAWDEVOPSMAY ou comprando pelo link -> 20% OFF https://lnkd.in/dAHHt9se hashtag#devops hashtag#k8s