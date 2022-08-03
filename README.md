# k8-inject-gcloud-secrets
Inject secrets to the pod from Gcloud secrets


# K8 deployment

```shell
helm upgrade -i gcloud-secrets helm-chart
```

# Verify secrets injection

```
kubectl port-forward svc/gcloud-secrets-helm-chart 8080:80
curl localhost:8080/showtoken
```

Note: you should not return anything from secret to the client, its just for the demo purposes.




### Build image

Mac
```bash
docker build --platform linux/x86-64 -t adiii717/demo-app .
docker tag adiii717/demo-app adiii717/demo-app:gcloud-secret-injection-demo
docker push adiii717/demo-app:gcloud-secret-injection-demo
```


