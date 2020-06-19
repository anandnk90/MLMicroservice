# Machine Learning Microservice API to predict housing prices in Boston

## Current Status
[![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)

## Summary

This project applies DevOps practices to operationalize a pre-trained 'sklearn' machine learning model. The model has been trained to predict housing prices in Boston according to features like the average number of rooms in a home, highway access, teacher-to-pupil ratios, etc.. The data used for this project has been sourced from Kaggle and can be [found here](https://www.kaggle.com/c/boston-housing).

The project contents can be used to make, lint, build, test and upload docker images to Docker Hub; and the deployment of the uploaded Docker image in a Kubernetes cluster.

## Running the app

### 1. Setting up the environment
1. Create a virtualenv and activate it
2. Run `make install` to install the necessary dependencies

### 2 Creating, testing, running and uploading the Docker image
1. To create and deploy docker image, run command:  `./run_docker.sh`
2. To upload docker image to Docker hub, run command: `./upload_docker.sh <<dockerpath>> <<docker image>>`  
    **Notes:**
     * Find docker image id using command: `docker image ls`
     * Step requires a password file named `dockerpasswd.txt` to log in to Docker Hub.
3. To make a prediction, run command: `./make_prediction.sh`

### 3. Deploying in Kubernetes
1. After a docker image has been created (using the steps listed earlier), run command `./run_kubernetes.sh` to create and deploy the container in a Kubernetes cluster.  
    **Notes:**
    * Before running this step, ensure that minikube is running. To start minikube, run command: `minikube start`
2. To make a prediction, run command: `./make_prediction_kubernetes.sh`
    **Notes:**
    * Before running this step, ensure that the created pods are running using command: `kubectl get pods`

### Alternate: To run project standalone:
* Run command to start the app:  `python app.py`
* Run command: `./make_prediction.sh`

## Sample Outputs
* Outputs from a previous run from the docker container can be seen in the file : `docker_out.txt`
* Outputs from a previous run from the kubernetes cluster can be seen in the file : `kubernetes_out.txt`

## Files in repository

| File/Directory | Use |
|----------------|-----|
| app.py | Application code |
| Makefile | application make file |
| requirements.txt | requirements file that lists dependencies |
| upload_docker.sh | to upload docker file to docker hub |
| Dockerfile | Docker file |
| run_docker.sh | shell script to create and run docker image |
| run_kubernetes.sh | to deploy kubernetes |
| make_prediction_kubernetes.sh | shell script to make prediction when using kubernetes |
| make_prediction.sh | shell script to make prediction |
| kubernetesfiles | directory with kubernetes yaml files |
| model_data | directory with data for housing prediction |
| output_txt_files | directory with output logs |