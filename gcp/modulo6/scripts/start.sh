echo "-------------------------"
echo "Parando Instâncias no GCP"
echo "-------------------------"


./gcloud compute instances start gce-us-e1-grafana-k6-qa-dev --zone=us-east1-b && ./gcloud compute instances start gce-us-e1-healthcheck-k6-qa --zone=us-east1-b && ./gcloud compute instances start gce-us-e1-poc-grafana-k6-qa-prod --zone=us-east1-b && ./gcloud compute instances start gce-us-e1-prometheus-k6-qa-dev --zone=us-east1-b && ./gcloud compute instances start performance-testing --zone=us-east1-b && ./gcloud compute instances start gce-k6-0-prod --zone=us-east1-b && ./gcloud compute instances list


echo "-------------------------"
echo "Instâncias Paradas no GCP"
echo "-------------------------"
