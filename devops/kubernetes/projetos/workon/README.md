# WORKON

```bash
kubectl apply -f deployment.yaml

deployment.apps/workon created
```

```bash
kubectl port-forward deployment.apps/workon 8080:80

Forwarding from 127.0.0.1:8080 -> 80
Forwarding from [::1]:8080 -> 80
Handling connection for 8080
Handling connection for 8080
```

Acessar pelo browser

http://localhost:8080

