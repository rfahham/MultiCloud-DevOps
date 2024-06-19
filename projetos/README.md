# # Hands-on com Elastic Kubernetes Service (EKS) e Amazon RDS

# Hands-on com Elastic Kubernetes Service (EKS) e Amazon RDS

<aside>
💡 Atenção: este hands-on fará cobrança da utilização do EKS, pois não está incluso no free tier da AWS. Consulte pricing para mais info e não se esqueça de remover os recursos após o hands-on.

</aside>

- Download project files ⬇️

[project-files.zip](https://prod-files-secure.s3.us-west-2.amazonaws.com/0d1b678b-cd91-4256-93c7-73b2e82396d5/e651a9ef-7182-4031-b641-928b143b56fb/project-files.zip)

- Setar DB password variable

```
export TF_VAR_db_password="welcome123456"

```

- Rodar terraform

```
terraform init
terraform plan
terraform apply

```

- Conectar no RDS

```
mysql --host=<public_ip_address> --port=3306 -u root -p

```

- Preparar database

**Criar user**

```
CREATE USER app@'%' IDENTIFIED BY 'welcome123456';
GRANT ALL PRIVILEGES ON dbcovidtesting.* TO app@'%';
FLUSH PRIVILEGES;

```

**Criar tabela:**

```
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

- Preparar Docker image

```
docker login
docker build -t luxxy-covid-testing-system-app-pt:latest .
docker tag luxxy-covid-testing-system-app-pt:latest thecloudbootcamp/luxxy-covid-testing-system-app-pt:latest
docker push thecloudbootcamp/luxxy-covid-testing-system-app-pt:latest

```

- Preparar K8S deployment file
    
    Change bucket name
    Change image name
    
- Conectar no AWS EKS K8S

```
aws eks update-kubeconfig --name <CLUSTER_NAME> --region <REGION>
kubectl cluster-info
kubectl get nodes

```

- Deploy app no K8s

```
cd ../luxxy-kubernetes
kubectl apply -f luxxy-covid-testing-system.yaml

```

- Testar app

```
kubectl get svc

```

- Remover infra

```
kubectl delete svc luxxy-covid-testing-system
kubectl delete deployment luxxy-covid-testing-system
terraform destroy

```

---

### Known Issue:

Issue:
External IP is not populated - https://github.com/kubernetes/kubernetes/issues/73906

Solution:
Remove "[kubernetes.io/cluster/](http://kubernetes.io/cluster/)<CLUSTER_NAME>" of security group "EKS node shared security group"





Tem um bug nas tags do modulo

Precisa remover, pagar o deployment e o service e depois subir novamente

remover tag security group OWNER

Kubectl delete svc luxxy-covid-testing-system


Kubectl delete deployment luxxy-covid-testing-system




