# Aula 05 

### Comando para obter a senha do Grafana
```
kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode
```