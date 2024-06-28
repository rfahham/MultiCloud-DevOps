# Containers

## List running containers

```bash
docker ps
```

## List all containes (running and stopped)

```bash
docker ps -a
```

## Create and a start a container

```bash
docker run <image-name>
```

## Start a stopped container

```bash
docker start <container_id>
```

## Stop a running container

```bash
docker stop <container_id>
```

## Restart a container

```bash
docker restart <container_id>
```

## Remove a container

```bash
docker rm <container_id>
```

## Remove all stopped container

```bash
docker container prune
```

## Execute a command inside a running container

```bash
docker exec -it <container_id> <command>
```

## Fetch the logs of a container

```bash
docker logs <container_id>
```

## Display detailed information aboult a container

```bash
docker inspect <container_id>
```
