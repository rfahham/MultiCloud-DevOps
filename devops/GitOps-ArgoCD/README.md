# Gerenciamento de Infraestrutura com GitOps e ArgoCD

https://jjasonhenrique.me/2024/06/09/gerenciamento-de-infraestrutura-com-gitops-e-argocd/

O objetivo desse artigo é criar um tutorial de como instalar o ArgoCD no kubernetes usando kind e também vamos subir uma aplicação (o nosso famoso e querido nginx) usando o ArgoCD.

Pré Requisitos
Para fazer a instalção do ArgoCD e acompanhar esse artigo será necessário os seguintes pré requisitos abaixo:

Ter o helm instalado.
ter o kubectl instalado.
Ter uma conta no github.
Ter um cluster local usando kind. Mais informações nesse link.
Conceitos
Antes de partir para parte prática será necessários dar alguns passos atrás para entendermos sobre GitOps.

GitOps é um forma poderosa de gerenciar e automatizar a sua infraestrutura de forma declarativa usando um repositório git.


Basicamente o desenvolvedor e/ou engenheiro devops vai ter todas as definições de infraestrutura em um repositório e o ArgoCD irá fazer verificações em um intervalo de tempo e caso haja alguma modificação no repositório será iniciado um novo deploy da sua aplicação no seu cluster kubernetes.

Com gitops existe a possibilidade de fazer o reconcile das suas definições, ou seja, caso alguém faça uma alteração manual por exemplo alterando o número de réplicas o argocd irá verificar suas definições e vai fazer o reverte caso o número de réplicas correto não esteja declarado no seu repositório git.

Instalação ArgoCD
Para seguir com a instalação será necessário a criação de um cluster local usando kind. Após isso deve ser criado um namespace chamado argocd conforme comando abaixo:

kubectl create namespace argocd
Vamos fazer a instalação do ArgoCD utilizando o helm. Nesse link você terá mais informações sobre esse helm chart.

Abaixo o comando utilizado para a instalação do ArgoCD:

helm install argocd oci://ghcr.io/argoproj/argo-helm/argo-cd --version 7.1.3 -n argocd
Será iniciado a instalação e caso tenha sucesso será apresentado uma tela conforme abaixo:


Para verificar se os pods subiram corretamente podemos executar o seguinte comando:

kubectl get pods -n argocd
Acessando o ArgoCD
Nesse passo vamos recuperar a senha de admin do ArgoCD que está em um secret executando o comando abaixo:

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
Você deve salvar o valor apresentado no seu terminal.

Agora vamos acessar a console do ArgoCD fazendo um port-forward apontando para o service do ArgoCD usando o comando abaixo:

kubectl port-forward service/argocd-server -n argocd 8080:443 -n argocd
Através de qualquer navegador de Internet acessar o endereço http://127.0.0.1:8080 deverá apresentar um erro de certificado mas pode ignorar esse erro. Deverá ser apresentada a tela abaixo:


Agora você deve usar o usuário admin e a senha recuperada através do secret feito no passo anterior para acessar a console do ArgoCD. Deverá aparecer uma tela igual a abaixo:


Criando um repositório git
Agora vamos criar um repósitorio git com as definições de um nginx conforme abaixo:

apiVersion: apps/v1
kind: Deployment
metadata:
  creationTimestamp: null
  labels:
    app: nginx
  name: nginx
  namespace: argocd
spec:
  replicas: 2
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - image: nginx
        name: nginx
Caso queira pode usar o repositório que criei para esse artigo segue o link.

Criando a conexão entre um repositório git e o ArgoCD
Agora vamos fazer a conexão entre o servidor do ArgoCD e o seu repositório criado no passo anterior. Para isso vamos na opção Settings do lado esquerdo e depois em Repositories e clicar em Connect Repo e depois será apresentado a tela abaixo:


Nessa opção você consegue adicionar tanto um repositório do git como um repositório de helm chart.

Para o nosso caso deve ser configurado conforme abaixo:


Depois você deve clicar no botão Connect e será apresentado a conexão com o repositório do github conforme abaixo:


Criação da App usando a console do ArgoCD
Para fazer a criação da nossa aplicação usando o argoCD será necssário ir no menu Applications e depois clicar na opção New App conforme imagem abaixo:


Agora vamos fazer as configurações da nossa aplicação. Abaixo segue imagem das primeiras configurações:


Em General temos as seguintes configurações abaixo:

Application Name vai ser o nome da nossa aplicação.
Project podemos selecionar em qual projeto dentro do ArgoCD a nossa aplicação será criada. Como não criamos nenhum projeto vamos colocar no projeto Default que já vem criado.
Sync Policy vamos alterar para Automatic e habilitar as duas opções abaixo:
Prune Resources essa opção quando habilitada faz com que o ArgoCD delete qualquer recurso que não esteja declarado no git por exemplo se alterar a quantidade de replicas de um deploy usando o comando kubectl scale.
Self Heal essa opção quando habilitada força que o estado do seu deploy seja igual ao que está definido no seu repositório git.
Auto-Create Namespace caso o namespace não exista o mesmo será criado no seu cluster kubernetes.
Agora vamos partir pra segunda parte das configurações conforme imagem abaixo:


Em Source temos as seguintes configurações abaixo:

Repository URL será a Url do nosso repositório git que está a definição do nossa app.
Revision vamos deixar o valor default que é HEAD mas podemos configurar outras branches ou tags do github.
Path é o diretório do github onde está a definição do nosso arquivo yaml.
Em Destination temos as seguintes configurações abaixo:

Cluster URL vamos passar a URL do nosso cluster kubernetes como só temos um cluster só aparecerá apenas uma opção mas existe a possibilidade de configurar mais de um cluster.
Namespace é o nome do namespace que será criado no nosso cluster caso não exista e onde será feito a criação da nossa aplicação.
Agora basta clicar no botão Create e será apresentado a nossa aplicação conforme abaixo:


Clicando sobre o quadro da nossa aplicação você terá uma visão de todos os objectos criados no kubernetes para esse deploy conforme abaixo:


Criação da aplicação via linha de comando
No passo anterior criamos a nossa aplicação usando a console do ArgoCD mas podemos também criar via linha de comando usando o kubectl. Para isso criar um arquivo chamado app.yaml com conteúdo abaixo:

    apiVersion: argoproj.io/v1alpha1
    kind: Application
    metadata:
    name: nginx
    namespace: argocd
    spec:
    project: default
    source:
        repoURL: 'https://github.com/jjasonhenrique/nginx-example.git'
        path: deploy
        targetRevision: HEAD
    destination:
        server: 'https://kubernetes.default.svc'
        namespace: nginx
    syncPolicy:
        automated:
        prune: true
        selfHeal: true
        syncOptions:
        - CreateNamespace=true

Depois disso executar o comando abaixo:

kubectl apply -f app.yaml
Para verificar o estado na sua aplicação no ArgoCD você pode usar o comando abaixo:

kubectl get apps -n argocd 
Deve ser apresentado uma tela similar a abaixo:


Validação
Nesse passo vamos fazer uma alteração manual na nossa aplicação diretamente no cluster alterando o número de replicas para 10 usando o comando abaixo:

kubectl scale deploy/nginx --replicas 10 -n nginx
Você irá perceber que instantaneamente serão terminados vários pods e ficará apenas 2 pods como Running conforme está configurado na definição que está no git. Isso é o conceito de reconcile do ArgoCD. Abaixo você pode ver uma imagem com os pods sendo terminados:


Você também pode verificar os eventos do kubernetes usando o comando abaixo:

kubectl get events -n nginx
Deletar cluster local
Para deletar seu cluster criado usando o kind seguir os comandos abaixo:

kind get clusters
Para pegar o nome do cluster.

kind delete clusters name-cluster
Comando acima usado para deletar o cluster .

Conclusão
O objetivo desse artigo foi explicar um pouco sobre GitOps, demonstrar a instalação do ArgoCD e a criação de uma aplicação usando um repositório git.

Lembrando que a forma como foi instalado o ArgoCD é apenas pra testes. Para ambiente de produção é recomendável a criação do ArgoCD no modo HA.