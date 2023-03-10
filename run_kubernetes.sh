#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=hatn5/udacitydevops:latest
# Step 2
# Run the Docker Hub container with kubernetes
# kubectl create deploy devop-project4-app --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/devop-project4-app-654666748d-r9478 --address 0.0.0.0 8080:80

# Logs
kubectl logs devop-project4-app-654666748d-r9478