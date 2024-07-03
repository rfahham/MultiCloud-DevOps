# K3D

k3d é um wrapper leve para executar k3s (distribuição mínima do Kubernetes do Rancher Lab) no docker.

O k3d torna muito fácil criar clusters k3s de nó único e múltiplo no docker, por exemplo, para desenvolvimento local no Kubernetes.

Site oficial: https://k3d.io/v5.6.3/

Instalação: https://k3d.io/v5.6.3/#releases

## Instalação no Linux ou WSL no Windows

```bash
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

Preparing to install k3d into /usr/local/bin
[sudo] password for rfahham: 
k3d installed into /usr/local/bin/k3d
Run 'k3d --help' to see what you can do with it.
```
## Crie um cluster nomeado mycluster com apenas um nó de servidor:

```bash
k3d cluster create mycluster

INFO[0000] Prep: Network                                
INFO[0000] Created network 'k3d-mycluster'              
INFO[0000] Created image volume k3d-mycluster-images    
INFO[0000] Starting new tools node...                   
INFO[0001] Creating node 'k3d-mycluster-server-0'       
INFO[0002] Pulling image 'ghcr.io/k3d-io/k3d-tools:5.6.3' 
INFO[0003] Pulling image 'docker.io/rancher/k3s:v1.28.8-k3s1' 
INFO[0004] Starting node 'k3d-mycluster-tools'          
INFO[0012] Creating LoadBalancer 'k3d-mycluster-serverlb' 
INFO[0014] Pulling image 'ghcr.io/k3d-io/k3d-proxy:5.6.3' 
INFO[0018] Using the k3d-tools node to gather environment information 
INFO[0019] HostIP: using network gateway 172.18.0.1 address 
INFO[0019] Starting cluster 'mycluster'                 
INFO[0019] Starting servers...                          
INFO[0019] Starting node 'k3d-mycluster-server-0'       
INFO[0023] All agents already running.                  
INFO[0023] Starting helpers...                          
INFO[0023] Starting node 'k3d-mycluster-serverlb'       
INFO[0029] Injecting records for hostAliases (incl. host.k3d.internal) and for 2 network members into CoreDNS configmap... 
INFO[0031] Cluster 'mycluster' created successfully!    
INFO[0031] You can now use it like this:                
kubectl cluster-info
```

Por padrão o K3d cria somente um SERVERS e nenhum AGENTS

`Creating node 'k3d-mycluster-server-0'` 

## Verificando o cluster:

```bash
kubectx

k3d-mycluster
```

Ou usando o k3d

```bash
k3d cluster list

NAME        SERVERS   AGENTS   LOADBALANCER
mycluster   1/1       0/0      true
```

## Verificando o container

```bash
docker container ls

CONTAINER ID   IMAGE                            COMMAND                  CREATED         STATUS         PORTS                             NAMES
82f376b8443e   ghcr.io/k3d-io/k3d-proxy:5.6.3   "/bin/sh -c nginx-pr…"   5 minutes ago   Up 5 minutes   80/tcp, 0.0.0.0:43679->6443/tcp   k3d-mycluster-serverlb
aba979266d17   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   5 minutes ago   Up 5 minutes                                     k3d-mycluster-server-0
```

## Use o novo cluster com kubectl, por exemplo:

```bash
kubectl get nodes

NAME                     STATUS   ROLES                  AGE   VERSION
k3d-mycluster-server-0   Ready    control-plane,master   65s   v1.28.8+k3s1
```

## Para criar um cluster com mais SERVERS e AGENTS, precisa especificar a quantidade>

```bash
k3d cluster create mycluster --servers 3 --agents 3
```

## Verificando os NODES
```bash

kubectl get nodes
NAME                     STATUS   ROLES                       AGE   VERSION
k3d-mycluster-agent-0    Ready    <none>                      36s   v1.28.8+k3s1
k3d-mycluster-agent-1    Ready    <none>                      37s   v1.28.8+k3s1
k3d-mycluster-agent-2    Ready    <none>                      36s   v1.28.8+k3s1
k3d-mycluster-server-0   Ready    control-plane,etcd,master   76s   v1.28.8+k3s1
k3d-mycluster-server-1   Ready    control-plane,etcd,master   59s   v1.28.8+k3s1
k3d-mycluster-server-2   Ready    control-plane,etcd,master   42s   v1.28.8+k3s1
```

Listando os Containers com o K3D

```bash
k3d cluster list

NAME        SERVERS   AGENTS   LOADBALANCER
mycluster   3/3       3/3      true
```

## Verificando os Containers criados

```bash
docker container ls

CONTAINER ID   IMAGE                            COMMAND                  CREATED         STATUS         PORTS                             NAMES
57a90ac145bd   ghcr.io/k3d-io/k3d-proxy:5.6.3   "/bin/sh -c nginx-pr…"   3 minutes ago   Up 3 minutes   80/tcp, 0.0.0.0:41755->6443/tcp   k3d-mycluster-serverlb
875d93ebd30a   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   3 minutes ago   Up 3 minutes                                     k3d-mycluster-agent-2
a3c4a3d17427   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   3 minutes ago   Up 3 minutes                                     k3d-mycluster-agent-1
e3f64e726d22   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   3 minutes ago   Up 3 minutes                                     k3d-mycluster-agent-0
a2954ba8da09   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   3 minutes ago   Up 3 minutes                                     k3d-mycluster-server-2
dada23ecf5d5   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   3 minutes ago   Up 3 minutes                                     k3d-mycluster-server-1
7a13396cb74e   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   3 minutes ago   Up 3 minutes                                     k3d-mycluster-server-0
```

## Utilizando o NodePort

```bash
k3d cluster create mycluster --servers 3 --agents 3 -p "30000:30000@loadbalancer"

INFO[0000] portmapping '30000:30000' targets the loadbalancer: defaulting to [servers:*:proxy agents:*:proxy] 
INFO[0000] Prep: Network                                
INFO[0000] Created network 'k3d-mycluster'              
INFO[0000] Created image volume k3d-mycluster-images    
INFO[0000] Starting new tools node...                   
INFO[0000] Creating initializing server node            
INFO[0000] Creating node 'k3d-mycluster-server-0'       
INFO[0000] Starting node 'k3d-mycluster-tools'          
INFO[0001] Creating node 'k3d-mycluster-server-1'       
INFO[0002] Creating node 'k3d-mycluster-server-2'       
INFO[0002] Creating node 'k3d-mycluster-agent-0'        
INFO[0002] Creating node 'k3d-mycluster-agent-1'        
INFO[0002] Creating node 'k3d-mycluster-agent-2'        
INFO[0002] Creating LoadBalancer 'k3d-mycluster-serverlb' 
INFO[0002] Using the k3d-tools node to gather environment information 
INFO[0003] HostIP: using network gateway 172.21.0.1 address 
INFO[0003] Starting cluster 'mycluster'                 
INFO[0003] Starting the initializing server...          
INFO[0003] Starting node 'k3d-mycluster-server-0'       
INFO[0006] Starting servers...                          
INFO[0006] Starting node 'k3d-mycluster-server-1'       
INFO[0028] Starting node 'k3d-mycluster-server-2'       
INFO[0042] Starting agents...                           
INFO[0043] Starting node 'k3d-mycluster-agent-0'        
INFO[0043] Starting node 'k3d-mycluster-agent-2'        
INFO[0043] Starting node 'k3d-mycluster-agent-1'        
INFO[0048] Starting helpers...                          
INFO[0048] Starting node 'k3d-mycluster-serverlb'       
INFO[0055] Injecting records for hostAliases (incl. host.k3d.internal) and for 7 network members into CoreDNS configmap... 
INFO[0057] Cluster 'mycluster' created successfully!    
INFO[0057] You can now use it like this:                
kubectl cluster-info
```

```bash
docker container ls                                                              

CONTAINER ID   IMAGE                            COMMAND                  CREATED              STATUS              PORTS                                                                            NAMES
aaed6e553986   ghcr.io/k3d-io/k3d-proxy:5.6.3   "/bin/sh -c nginx-pr…"   About a minute ago   Up 35 seconds       80/tcp, 0.0.0.0:30000->30000/tcp, :::30000->30000/tcp, 0.0.0.0:39461->6443/tcp   k3d-mycluster-serverlb
968657b3ef50   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   About a minute ago   Up 40 seconds                                                                                        k3d-mycluster-agent-2
b75946c52732   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   About a minute ago   Up 40 seconds                                                                                        k3d-mycluster-agent-1
9016b8101558   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   About a minute ago   Up 40 seconds                                                                                        k3d-mycluster-agent-0
4f079507c517   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   About a minute ago   Up 56 seconds                                                                                        k3d-mycluster-server-2
75ff853a96d8   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   About a minute ago   Up About a minute                                                                                    k3d-mycluster-server-1
87c67e0e8d62   rancher/k3s:v1.28.8-k3s1         "/bin/k3d-entrypoint…"   About a minute ago   Up About a minute                                                                                    k3d-mycluster-server-0
```

Abrir no browser: http://localhost:30000/

## Deletar o cluster nomeado mycluster:

```bash
k3d cluster delete mycluster

INFO[0000] Deleting cluster 'mycluster'                 
INFO[0002] Deleting cluster network 'k3d-mycluster'     
INFO[0003] Deleting 1 attached volumes...               
INFO[0003] Removing cluster details from default kubeconfig... 
INFO[0003] Removing standalone kubeconfig file (if there is one)... 
INFO[0003] Successfully deleted cluster mycluster!
```
