# PVC - Persistent Volumes

https://kubernetes.io/pt-br/docs/concepts/storage/persistent-volumes/

Criando PVC

```bash
apiVersion: v1
kind: PersistentVolume
metadata:
  name: foo-pv
  namespace: app-lab
spec:
  storageClassName: ""
  claimRef:
    name: foo-pvc
    namespace: foo
```

```bash
kubectl apply -f pvc.yaml
```
```bash
kubectl get pv
```