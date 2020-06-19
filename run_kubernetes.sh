#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=anandnk90/udacitymlapp
#dockerpath=${1}

# Step 2
# Run the Docker Hub container with kubernetes

#Create deployment
#kubectl create deployment mlapp --image=$dockerpath:udacitymlapp
kubectl apply -f kubernetesfiles/kubernetesdeployment.yml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl apply -f kubernetesfiles/kubernetesservice.yml
