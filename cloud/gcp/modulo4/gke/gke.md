# Google Kubernetes Engine (GKE)

Cluster gerenciado pelo google

## Welcome to Google Cloud's pricing calculator

[Calculadora GCP](https://cloud.google.com/products/calculator?utm_source=google&utm_medium=cpc&utm_campaign=latam-BR-all-pt-dr-sitelink-all-all-trial-p-dr-1707800&utm_content=text-ad-none-any-DEV_c-CRE_512285710746-ADGP_Hybrid+%7C+BKWS+-+PHR+%7C+Txt_GCP-General-KWID_43700062788251476-kwd-295915745166&utm_term=KW_gcp-ST_GCP&gad_source=1&gclid=CjwKCAjwreW2BhBhEiwAavLwfFPzq_tEtVDDzmI4KYXl7lnIQhwGSilziyh7BR9s7YtnfZTAJbbruRoCyT8QAvD_BwE&gclsrc=aw.ds)


https://www.youtube.com/live/S2BiDmuIyDQ

https://www.youtube.com/watch?v=3K1rswpWVQk

Após criar o Cluster

Instalar o GCLOUD pra poder conectr ao cluster

Connect to the Cluster, copiar alinha de comando

```bash
gcloud container cluster get-credentials <nome do cluster> --zone us-east1-b --project <nome do projeto>

Fetcing luster endpoit and auth data.
kubeconfig entry generated for <nome do cluster>
```

kubectl get namespace

criar e acessar o namespace `app-lab`

```bash
kubectl create ns app-lab

kubens app-lab
```

Fazer o deploy da aplicação que está em projetos

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml
```

Em Workload é possível ver os pods


```bash
kubectl get all
```

Para pegar o ip da aplicação (ADRESS)

```bash
kubectl get ingress
```
## Acessandro Localmente

```bash
kubectl port-forward service/my-service 8080:80
```

## Acessando pelo Load Balancer

http://IP do LoadBalancer


