# Criar par de chaves

```bash
aws ec2 create-key-pair --key-name aws-instace-key --key-type rsa --key-format pem --query "KeyMaterial" --output text > aws-instace-key.pem
```