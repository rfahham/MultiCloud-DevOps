# Instalação K8S - AWS

Criar o Cluster

```bash
k3d cluster create mycluster --servers 3 --agents 3
```

## Verificar informações sobre o cluster

```bash
kubectl cluster-info

Kubernetes control plane is running at https://0.0.0.0:34229
CoreDNS is running at https://0.0.0.0:34229/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:34229/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

## Listar os Cluster existentes

```bash
kubectx

k3d-mycluster
```

## Listar os nodes criados

```bash
kubectl get nodes

NAME                     STATUS   ROLES                       AGE     VERSION
k3d-mycluster-agent-0    Ready    <none>                      111s    v1.28.8+k3s1
k3d-mycluster-agent-1    Ready    <none>                      111s    v1.28.8+k3s1
k3d-mycluster-agent-2    Ready    <none>                      111s    v1.28.8+k3s1
k3d-mycluster-server-0   Ready    control-plane,etcd,master   2m30s   v1.28.8+k3s1
k3d-mycluster-server-1   Ready    control-plane,etcd,master   2m15s   v1.28.8+k3s1
k3d-mycluster-server-2   Ready    control-plane,etcd,master   119s    v1.28.8+k3s1
```

## Criar o namespace

```bash
kubectl create namespace prometheus-grafana && kubens prometheus-grafana
```

## Aplicar a receita

```bash
kubectl apply -f deployment.yaml

serviceaccount/prometheus-kube-state-metrics created
serviceaccount/prometheus-node-exporter created
serviceaccount/prometheus-server created
configmap/prometheus-server created
clusterrole.rbac.authorization.k8s.io/prometheus-kube-state-metrics created
clusterrole.rbac.authorization.k8s.io/prometheus-server created
clusterrolebinding.rbac.authorization.k8s.io/prometheus-kube-state-metrics created
clusterrolebinding.rbac.authorization.k8s.io/prometheus-server created
service/prometheus-kube-state-metrics created
service/prometheus-node-exporter created
service/prometheus-server created
daemonset.apps/prometheus-node-exporter created
deployment.apps/prometheus-kube-state-metrics created
deployment.apps/prometheus-server created
serviceaccount/grafana-test created
configmap/grafana-test created
role.rbac.authorization.k8s.io/grafana-test created
rolebinding.rbac.authorization.k8s.io/grafana-test created
pod/grafana-test created
serviceaccount/grafana created
secret/grafana created
configmap/grafana created
clusterrole.rbac.authorization.k8s.io/grafana-clusterrole created
clusterrolebinding.rbac.authorization.k8s.io/grafana-clusterrolebinding created
role.rbac.authorization.k8s.io/grafana created
rolebinding.rbac.authorization.k8s.io/grafana created
service/grafana created
deployment.apps/grafana created
```

Prometheus

Grafana


### Comando para obter a senha do Grafana
```
kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode
```