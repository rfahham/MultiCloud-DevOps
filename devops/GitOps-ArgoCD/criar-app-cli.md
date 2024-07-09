# Criação da aplicação via linha de comando

No passo anterior criamos a nossa aplicação usando a console do ArgoCD mas podemos também criar via linha de comando usando o kubectl. 

Para isso criar um arquivo chamado nginx.yaml com conteúdo abaixo:

```bash
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
```

Depois disso executar o comando abaixo:

```bash
kubectl apply -f nginx.yaml
```

Para verificar o estado na sua aplicação no ArgoCD você pode usar o comando abaixo:

```bash
kubectl get apps -n argocd 
```

Deve ser apresentado uma tela similar a abaixo:


Validação

Nesse passo vamos fazer uma alteração manual na nossa aplicação diretamente no cluster alterando o número de replicas para 10 usando o comando abaixo:

```bash
kubectl scale deploy/nginx --replicas 10 -n nginx

kubectl scale deploy/workon --replicas 10 -n workon
deployment.apps/workon scaled
```
## Verificar se o escalonamento funcionou...rs

```bash
kubectl get pods
NAME                      READY   STATUS    RESTARTS      AGE
workon-69dccb94cb-7cnkn   1/1     Running   0             20s
workon-69dccb94cb-8kdw9   1/1     Running   0             20s
workon-69dccb94cb-fm87j   1/1     Running   0             20s
workon-69dccb94cb-mc7n7   1/1     Running   0             20s
workon-69dccb94cb-p85fn   1/1     Running   0             20s
workon-69dccb94cb-qrdb6   1/1     Running   0             20s
workon-69dccb94cb-rhgbc   1/1     Running   0             61m
workon-69dccb94cb-tbfq8   1/1     Running   0             20s
workon-69dccb94cb-xq5gl   1/1     Running   1 (58m ago)   61m
workon-69dccb94cb-xxw74   1/1     Running   0             20s
```

Você irá perceber que instantaneamente serão terminados vários pods e ficará apenas 2 pods como Running conforme está configurado na definição que está no git. Isso é o conceito de reconcile do ArgoCD. Abaixo você pode ver uma imagem com os pods sendo terminados:


Você também pode verificar os eventos do kubernetes usando o comando abaixo:

```bash
kubectl get events -n nginx
```

## Deletar cluster local

Para deletar seu cluster criado usando o kind seguir os comandos abaixo:

```bash
kind get clusters
```

Para pegar o nome do cluster.

```bash
kind delete clusters name-cluster
```

Comando acima usado para deletar o cluster .

## Conclusão

O objetivo desse artigo foi explicar um pouco sobre GitOps, demonstrar a instalação do ArgoCD e a criação de uma aplicação usando um repositório git.

Lembrando que a forma como foi instalado o ArgoCD é apenas pra testes. Para ambiente de produção é recomendável a criação do ArgoCD no modo HA.

