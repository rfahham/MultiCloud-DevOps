./build.sh
aws ecs update-service --cluster [SEU_CLUSTER] --service [SEU_SERVICE] --forece-new-deployment