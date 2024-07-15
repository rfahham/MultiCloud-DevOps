Listar as instâncias de um projeto

```bash
$ gcloud compute instances list

NAME                            ZONE        MACHINE_TYPE                   PREEMPTIBLE  INTERNAL_IP    EXTERNAL_IP  STATUS
gce-us-e1-grafana-k6-qa-dev     us-east1-b  e2-small                                    10.88.100.141               TERMINATED
gce-us-e1-healthcheck-k6-qa     us-east1-b  e2-micro                                    10.88.100.139               TERMINATED
gce-us-e1-prometheus-k6-qa-dev  us-east1-b  custom (e2, 4 vCPU, 8.00 GiB)               10.88.100.140               TERMINATED
performance-testing             us-east1-b  e2-highcpu-8                                10.88.100.142               TERMINATED
```

```bash
gcloud compute instances list

NAME: gce-rfahham-lab1
ZONE: southamerica-east1-a
MACHINE_TYPE: e2-medium
PREEMPTIBLE: 
INTERNAL_IP: 10.158.0.14
EXTERNAL_IP: 34.151.199.164
STATUS: RUNNING
```