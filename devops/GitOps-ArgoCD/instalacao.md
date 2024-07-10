# Instalação ArgoCD

Para seguir com a instalação será necessário a criação de um cluster local usando kind. Após isso deve ser criado um namespace chamado argocd conforme comando abaixo:

```bash
kubectl create namespace argocd

namespace/argocd created
```

Vamos fazer a instalação do ArgoCD utilizando o helm. 

Nesse link você terá mais informações sobre esse helm chart.

Abaixo o comando utilizado para a instalação do ArgoCD:

```bash
helm install argocd oci://ghcr.io/argoproj/argo-helm/argo-cd --version 7.1.3 -n argocd
```

Será iniciado a instalação e caso tenha sucesso será apresentado uma tela conforme abaixo:

```bash
Pulled: ghcr.io/argoproj/argo-helm/argo-cd:7.1.3
Digest: sha256:2c7b4ae30ba147bcc003da6c865eb3a8bb796070c5051128845908dc5651ed45
NAME: argocd
LAST DEPLOYED: Tue Jul  9 09:49:05 2024
NAMESPACE: argocd
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
In order to access the server UI you have the following options:

1. kubectl port-forward service/argocd-server -n argocd 8080:443

    and then open the browser on http://localhost:8080 and accept the certificate

2. enable ingress in the values file `server.ingress.enabled` and either
      - Add the annotation for ssl passthrough: https://argo-cd.readthedocs.io/en/stable/operator-manual/ingress/#option-1-ssl-passthrough
      - Set the `configs.params."server.insecure"` in the values file and terminate SSL at your ingress: https://argo-cd.readthedocs.io/en/stable/operator-manual/ingress/#option-2-multiple-ingress-objects-and-hosts


After reaching the UI the first time you can login with username: admin and the random password generated during the installation. You can find the password by running:

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

(You should delete the initial secret afterwards as suggested by the Getting Started Guide: https://argo-cd.readthedocs.io/en/stable/getting_started/#4-login-using-the-cli)
```

Para verificar se os pods subiram corretamente podemos executar o seguinte comando:

```bash
kubectl get pods -n argocd

NAME                                               READY   STATUS      RESTARTS   AGE
argocd-application-controller-0                    1/1     Running     0          103s
argocd-applicationset-controller-c5d4586ff-nj9fh   1/1     Running     0          103s
argocd-dex-server-6fff54b8f9-b7886                 1/1     Running     0          103s
argocd-notifications-controller-775ccf78db-sdqbj   1/1     Running     0          103s
argocd-redis-56f6c644c5-rf8p4                      1/1     Running     0          103s
argocd-redis-secret-init-9znbn                     0/1     Completed   0          2m10s
argocd-repo-server-864d9c575b-p9vl6                1/1     Running     0          103s
argocd-server-8b6b76b46-6mn7d                      1/1     Running     0          103s
```

Próximo passo... [Acessando o ArgoCD](acesso.md)