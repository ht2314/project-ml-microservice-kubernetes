#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="ht2314/project-ml:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project-ml --image=$dockerpath --port=80 --labels app=project-ml


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/project-ml --address 0.0.0.0 8000:80
