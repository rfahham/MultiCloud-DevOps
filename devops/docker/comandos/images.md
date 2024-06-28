# IMAGES

Listar as imagens

```bash
docker images

REPOSITORY                    TAG       IMAGE ID       CREATED          SIZE
workon                        latest    1eabeadba7ac   23 minutes ago   188MB
nginx                         latest    e0c9858e10ed   6 days ago       188MB
ubuntu                        latest    35a88802559d   2 weeks ago      78.1MB
postgres                      latest    74cc00b2e28f   7 weeks ago      432MB
gcr.io/k8s-minikube/kicbase   v0.0.44   5a6e59a9bdc0   7 weeks ago      1.26GB
```


Build an image from a Dockerfile
docker build -t <image-name> .

Remove an image
docker rmi <image-name>

Remove all unysed images
docker image prune

Display detailed information aboult an image
docker image inspect <image-name>