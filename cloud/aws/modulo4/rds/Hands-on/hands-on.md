# Hands-on com Elastic Kubernetes Service (EKS) e Amazon RDS


💡 Atenção: este hands-on fará cobrança da utilização do EKS, pois não está incluso no free tier da AWS. Consulte pricing para mais info e não se esqueça de remover os recursos após o hands-on.


## Variáveis de Ambiente

Setar DB password variable

```bash
export TF_VAR_db_password="welcome123456"
```

## Rodar terraform

```bash
terraform init
terraform plan
terraform apply
```

## Conectar no RDS

```bash
mysql --host=<public_ip_address> --port=3306 -u root -p
```

## Preparar database

### Criar user

```bash
CREATE USER app@'%' IDENTIFIED BY 'welcome123456';
GRANT ALL PRIVILEGES ON dbcovidtesting.* TO app@'%';
FLUSH PRIVILEGES;
```

### Criar tabela

```bash
CREATE TABLE `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_name` varchar(200) NOT NULL,
  `home_country` varchar(200) DEFAULT NULL,
  `testing_type` varchar(200) DEFAULT NULL,
  `testing_result` varchar(200) DEFAULT NULL,
  `pdf` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
```

## Preparar Docker image

```bash
docker login

docker build -t workon:latest .

docker tag workon:latest rfahham/workon:latest

docker push rfahham/workon:latest
```

## Preparar K8S deployment file
    
- Change bucket name

- Change image name
    
## Conectar no AWS EKS K8S

```bash
aws eks update-kubeconfig --name <CLUSTER_NAME> --region <REGION>

kubectl cluster-info

kubectl get nodes
```

## Deploy app no K8s

```bash
cd ../luxxy-kubernetes

kubectl apply -f deployment.yaml
```

## Testar app

```bash
kubectl get svc
```

## Remover infra

```bash

kubectl delete svc workon

kubectl delete deployment workon

terraform destroy
```