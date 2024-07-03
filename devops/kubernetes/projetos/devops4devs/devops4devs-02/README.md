# AULA 2

## REVIEW FILMES

Aplicação WEB com acesso a um banco de dados POSTGRES

Criar um DEPLOYMENT utilizando uma imagem

## Comando de criação do cluster Kubernetes com o K3D

```bash
k3d cluster create meucluster --servers 3 --agents 3 -p "30000:30000@loadbalancer"
```

## Criar a imagem localmente

Acessar a pasta SRC

```bash
docker build -t rfahham/review-filmes:v1 -f src/Review-Filmes.Web/Dockerfile .
```

## Verificando a imagem

```bash
docker image ls

REPOSITORY                    TAG            IMAGE ID       CREATED          SIZE
rfahham/review-filmes         v1             c5fdba674045   28 seconds ago   279MB
workon                        latest         1eabeadba7ac   5 days ago       188MB
gcr.io/k8s-minikube/kicbase   v0.0.44        5a6e59a9bdc0   7 weeks ago      1.26GB
ghcr.io/k3d-io/k3d-tools      5.6.3          3e61fe13415d   2 months ago     20.2MB
ghcr.io/k3d-io/k3d-proxy      5.6.3          2f9ac4724f73   2 months ago     61.2MB
rancher/k3s                   v1.28.8-k3s1   4356e3133013   3 months ago     206MB
```

## Enviar para o DOCKERHUB

```bash
docker push rfahham/review-filmes:v1

The push refers to repository [docker.io/rfahham/review-filmes]
abe51ecad834: Pushed 
5f70bf18a086: Pushed 
ac3de2255ccd: Pushed 
8cd1ff8de418: Pushed 
eae5edbe292e: Pushed 
002512fe1f30: Pushed 
201e9ddbf675: Pushed 
5aef57ef5a21: Pushed 
32148f9f6c5a: Pushed 
v1: digest: sha256:3025b43e7b28bd2814e79963418e33e151301a8f4ed7e7f74218f646a721814b size: 2204
```

## Listar os resources

```bash
kubectl api-resources | grep deploy

NAME                              SHORTNAMES   APIVERSION                             NAMESPACED   KIND
deployments                       deploy       apps/v1                                true         Deployment
```

## MANIFESTO

Próximo passo... [Criar o Manifesto](../devops4devs-02/k8s/deployment.yaml)


## Executar o MANIFESTO

```bash
kubectl apply -f k8s/deployment.yaml

deployment.apps/postgre created
```

## Verificando o STATUS

```bash
kubectl get pods 

NAME                       READY   STATUS    RESTARTS   AGE
postgre-7dfd8b54d5-4zlx8   1/1     Running   0          41s
```

## Verificando o DEPLOY

```bash
kubectl get deploy

NAME      READY   UP-TO-DATE   AVAILABLE   AGE
postgre   1/1     1            1           2m13s
```

## Verificando o REPLICASET

```bash
kubectl get replicaset

NAME                 DESIRED   CURRENT   READY   AGE
postgre-7dfd8b54d5   1         1         1       3m55s
```

## Descrever o pod

```bash
kubectl describe pod

Name:             postgre-7dfd8b54d5-4zlx8
Namespace:        review-filmes
Priority:         0
Service Account:  default
Node:             k3d-mycluster-agent-2/172.21.0.6
Start Time:       Wed, 03 Jul 2024 10:59:55 -0300
Labels:           app=postgre
                  pod-template-hash=7dfd8b54d5
Annotations:      <none>
Status:           Running
IP:               10.42.3.3
IPs:
  IP:           10.42.3.3
Controlled By:  ReplicaSet/postgre-7dfd8b54d5
Containers:
  postgre:
    Container ID:   containerd://2bfc8bf4fe2d1cfde32a5647892f2627a228a66b4d4fa282f515ec70e78f2fea
    Image:          postgres:13.1
    Image ID:       docker.io/library/postgres@sha256:26180996f7d804993f9c90398615d1269709a799b5eb79109292843a1c7cd851
    Port:           5432/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Wed, 03 Jul 2024 11:00:12 -0300
    Ready:          True
    Restart Count:  0
    Environment:
      POSTGRES_PASSWORD:  Passw0rd20244!
      POSTGRES_USER:      reviewfilmes
      POSTGRES_DB:        reviewfilmes
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-jlsrn (ro)
Conditions:
  Type              Status
  Initialized       True 
  Ready             True 
  ContainersReady   True 
  PodScheduled      True 
Volumes:
  kube-api-access-jlsrn:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason     Age    From               Message
  ----    ------     ----   ----               -------
  Normal  Scheduled  5m47s  default-scheduler  Successfully assigned review-filmes/postgre-7dfd8b54d5-4zlx8 to k3d-mycluster-agent-2
  Normal  Pulling    5m47s  kubelet            Pulling image "postgres:13.1"
  Normal  Pulled     5m30s  kubelet            Successfully pulled image "postgres:13.1" in 16.911s (16.912s including waiting)
  Normal  Created    5m30s  kubelet            Created container postgre
  Normal  Started    5m30s  kubelet            Started container postgre
```

## Depois de adicionar o SERVICE no DEPLOYMENT

Executar novamente o kubectl apply

```bash
kubectl apply -f deployment.yaml

deployment.apps/postgre unchanged
service/postgre created
```

## Verificar se o service está funcionando

```bash
kubectl get service

NAME      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
postgre   ClusterIP   10.43.175.230   <none>        5432/TCP   87s
```

O TYPE ClusterIP, só pode ser acessado internamente.

## Redirecionar a port

```bash
kubectl port-forward service/postgre 5432:5432

Forwarding from 127.0.0.1:5432 -> 5432
Forwarding from [::1]:5432 -> 5432
```

Criar o [deployment da Aplicação](../devops4devs-02/k8s/app/deployment.yaml)

## Aplicar

```bash
kubectl apply -f deployment.yaml              

deployment.apps/reiewfilmes created
service/reiewfilmes created
```

## Verificar os pods

```bash
kubectl get pods

NAME                           READY   STATUS    RESTARTS   AGE
postgre-7dfd8b54d5-4zlx8       1/1     Running   0          39m
reiewfilmes-5ddb58ddb5-5n9jw   1/1     Running   0          83s
```
## Alterando conteúdo e subindo a atualização

```bash
docker build -t rfahham/review-filmes:v2 -f src/Review-Filmes.Web/Dockerfile --push ./src/
```

Atualizar o deployment da aplicação para a versão 2

[Deployment da Aplicação](../devops4devs-02/k8s/app/deployment.yaml)

```bash
kubectl apply -f deployment.yaml && watch 'kubectl get replicaset,pod'
```

## ROLLOUT HISTORY

```bash
kubectl rollout history deployment reviewfilmes

deployment.apps/reviewfilmes 
REVISION  CHANGE-CAUSE
1         <none>
2         <none>
```

## ROLLOUT ROLLOUT

```bash
kubectl rollout undo deployment reviewfilmes
```
