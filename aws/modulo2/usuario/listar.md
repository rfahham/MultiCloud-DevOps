# Listar usuários

## Utilizando o jq

```bash
aws iam list-users | jq

{
  "Users": [
    {
      "Path": "/",
      "UserName": "terraform",
      "UserId": "AIDAQ3EGUMIUDOGDHJSOB",
      "Arn": "arn:aws:iam::058264412712:user/terraform",
      "CreateDate": "2024-04-15T16:23:54+00:00"
    }
  ]
}
```

## Output json

```bash
aws iam list-users --output json
```