# assignment-victoria-smithgarcia

## FastAPI Technical Task

### Docker

#### Build Image and Run Container

Run the below commands to create a docker image from Dockerfile and Run the container to make sure it works (Running container is for testing purpose at the moment, later we will create an actual container from Kubernetes) 
```
docker build -t fastapi-app:latest .
docker run -e ENV=dev -p 8085:8085 fastapi-app:latest
```

### Kubernetes

Run the below commands to create deployment and service for exposing the application

```
minikube start --vm-driver=docke
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

### Jenkinsfile
jenkins file also has the steps for automated testing using pytest