### Docker

```sh
docker-compose --file deploy/docker-compose.yml run inaccel-vadd
```

### Kubernetes

```sh
envsubst < deploy/pod.yaml | kubectl create --filename -
kubectl wait --for condition=ready pod/inaccel-vadd
kubectl logs --follow pod/inaccel-vadd
kubectl delete pod/inaccel-vadd
```
