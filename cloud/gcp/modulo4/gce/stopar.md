# Stopar

Parar uma instancia que não está sendo utilizada

## Listando as instâncias

```bash
gcloud compute instances list
NAME: gce-rfahham-lab1
ZONE: southamerica-east1-a
MACHINE_TYPE: e2-medium
PREEMPTIBLE: 
INTERNAL_IP: 10.158.0.14
EXTERNAL_IP: 34.151.199.164
STATUS: RUNNING

NAME: gce-rfahham-lab2
ZONE: southamerica-east1-a
MACHINE_TYPE: e2-medium
PREEMPTIBLE: 
INTERNAL_IP: 10.158.0.15
EXTERNAL_IP: 34.95.183.131
STATUS: RUNNING
```

## Stopando uma das inst6ancias

```bash
gcloud compute instances stop <Nome da Instância> --zone=<Nome da zona>

gcloud compute instances stop gce-rfahham-lab1 --zone=southamerica-east1-a
```

```bash
gcloud compute instances list
NAME: gce-rfahham-lab1
ZONE: southamerica-east1-a
MACHINE_TYPE: e2-medium
PREEMPTIBLE: 
INTERNAL_IP: 10.158.0.14
EXTERNAL_IP: 
STATUS: TERMINATED
```
