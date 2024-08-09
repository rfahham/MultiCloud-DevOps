ECR_REGISTRY="SEU_REGISRY"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --passwprd=stdin $ECR_REGISTRY
docker build -t bia .
docker tag bia:latest $ECR_REGISTRY/bia:latest
docker push $ECR_REGISTRY/bia:latest