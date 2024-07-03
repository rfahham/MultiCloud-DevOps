# MINIKUBE

O minikube configura rapidamente um cluster Kubernetes local no macOS, Linux e Windows. Temos orgulho em nos concentrar em ajudar desenvolvedores de aplicativos e novos usuários do Kubernetes.

Site oficial: https://minikube.sigs.k8s.io/

Documentação: https://minikube.sigs.k8s.io/docs/

Instalação: https://minikube.sigs.k8s.io/docs/start/?arch=%2Fwindows%2Fx86-64%2Fstable%2F.exe+download


## Instalação no Linux ou WSL no Windows

### x86-64

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

alias kubectl="minikube kubectl --"
```

### arm64

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-arm64

sudo install minikube-linux-arm64 /usr/local/bin/minikube && rm minikube-linux-arm64

alias kubectl="minikube kubectl --"
```

## Inicie seu cluster

```bash
minikube start
```

## Use o novo cluster com kubectl, por exemplo:

```bash
kubectl get pods
```

## Deletar a VM do MINIKUBE

```bash
minikube delete
🔥  Deleting "minikube" in docker ...
🔥  Deleting container "minikube" ...
🔥  Removing /home/rfahham/.minikube/machines/minikube ...
💀  Removed all traces of the "minikube" cluster.
```

## Finalizar seu cluster

```bash
minikube stop
✋  Stopping node "minikube"  ...
🛑  Powering off "minikube" via SSH ...
🛑  1 node stopped.
```