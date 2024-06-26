# Alias Kubernetes (zshrc)

alias k=kubectl
alias kapply='kubectl apply -f'
alias kdel='kubectl delete'
alias kexec='kubectl exec -it'
alias kgcm='kubectl get configmaps'
alias kgd='kubectl get deployments'
alias kgn='kubectl get nodes'
alias kgnp='kubectl get namespace'
alias kgns='kubectl get namespace'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kgsec='kubectl get secrets'
alias klogs='kubectl logs'
alias kpd='kubectl describe pod'
alias kpf='kubectl port-forward'
alias kpv='kubectl get pv'
alias kscale='kubectl scale deployment --replicas'
alias ktn='kubectl top nodes'
alias kgpw="kubectl get pods -o wide"

## Atualizar o source

```bash
source ~/.zshrc
```
