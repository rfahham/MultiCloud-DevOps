# Criar uma instância de Compute Engine (GCE)

Execute o comando a seguir para criar sua VM:

```bash
gcloud compute instances create $VM_NAME --machine-type e2-medium --zone $ZONE
gcloud compute instances create <Nome da Instância>
gcloud compute instances create VM_NAME [--image IMAGE | --image-family IMAGE_FAMILY] --image-project IMAGE_PROJECT

Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-326fae68bc3d/zones/us-east1-c/instances/gce-rfahham-lab1].

NAME                ZONE     MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP   STATUS
gce-rfahham-lab1    ZONE     e2-medium                   10.128.0.2   34.67.152.90  RUNNING
```

## Detalhes do comando

gcloud compute permite gerenciar os recursos do Compute Engine de forma mais simples do que com a API Compute Engine.
instances create cria uma nova instância.
gcelab2 é o nome da VM.
A flag --machine-type especifica o tipo de máquina e2-medium.
A sinalização --zone especifica o local de criação da VM.
Ao omitir --zone, a ferramenta gcloud pode inferir a zona desejada com base nas propriedades padrão. Se as outras configurações de instância necessárias, como machine type e image, não forem especificadas no comando create, elas serão definidas com os valores padrão.

Substitua:

VM_NAME: o nome da nova VM.
IMAGE ou IMAGE_FAMILY: especifique uma das seguintes opções:

IMAGE: versão obrigatória de uma imagem pública. Por exemplo, --image debian-10-buster-v20200309.
IMAGE_FAMILY: uma família de imagens. Isso cria a VM a partir da imagem do SO mais recente e não obsoleta. Por exemplo, se você especificar --image-family debian-10, o Compute Engine criará uma VM a partir da versão mais recente da imagem do SO na família de imagens Debian 10.

IMAGE_PROJECT: o projeto que contém a imagem.
Para mais informações sobre como criar VMs, consulte Como criar e iniciar uma instância de VM e a documentação de referência de gcloud compute instances create.

```bash
gcloud compute instances create gce-rfahham-lab1 --zone=southamerica-east1-a --machine-type=e2-standard-2 --image=debian-10-buster-v20200309 --boot-disk-size="10GB" 

## Investigar...

{
  "error": {
    "code": 401,
    "message": "Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.",
    "errors": [
      {
        "message": "Login Required.",
        "domain": "global",
        "reason": "required",
        "location": "Authorization",
        "locationType": "header"
      }
    ],
    "status": "UNAUTHENTICATED",
    "details": [
      {
        "@type": "type.googleapis.com/google.rpc.ErrorInfo",
        "reason": "CREDENTIALS_MISSING",
        "domain": "googleapis.com",
        "metadatas": {
          "method": "compute.v1.ImagesService.Get",
          "service": "compute.googleapis.com"
        }
      }
    ]
  }
}

```
