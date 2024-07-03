# Listar usuários

## Utilizando o jq

```bash
aws iam list-users | jq

{
  "Users": [
    {
      "Path": "/",
      "UserName": "ricardo.fahham",
      "UserId": "AIDAKLKAJÇDLKFJJLKAJSDF",
      "Arn": "arn:aws:iam::98734095870:user/ricardo.fahham",
      "CreateDate": "2024-07-02T20:20:12+00:00"
    },
    {
      "Path": "/",
      "UserName": "terraform",
      "UserId": "AIDANVEPRRUGHFDGÇAGH",
      "Arn": "arn:aws:iam::98734095870:user/terraform",
      "CreateDate": "2024-04-15T16:23:54+00:00"
    }
  ]
}
```

## Output json

```bash
aws iam list-users --output json
```