# Machine Learning Microservice API to predict housing prices in Boston

## Current Status
[![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)

## Summary

This project applies DevOps practices to operationalize a pre-trained 'sklearn' machine learning model. The model has been trained to predict housing prices in Boston according to features like the average number of rooms in a home, highway access, teacher-to-pupil ratios, etc.. The data used for this project has been sourced from Kaggle and can be found [here] (https://www.kaggle.com/c/boston-housing).

The project contents can be used for the making, linting, building, testing and upload of docker images to Docker Hub; and the deployment of the uploaded Dcoker image in a Kubernetes cluster.

## Running the app

### 1. Setting up the environment
* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### 2. Creating, testing and uploading the Docker image
* Run command:  `./run_docker.sh`

### 3. Deploying in Kubernetes
* Run command:  `./run_kubernetes.sh`

### 4. Making a prediction
* Run command: `./make_prediction_kubernetes.sh`

### Optional: To run project standalone:
* Run command to start the app:  `python app.py`
* Run command: `./make_prediction.sh`

## Sample Outputs
* Outputs from a previous run from the docker container can be seen in the file : docker_out.txt
* Outputs from a previous run from the kubernetes cluster can be seen in the file : kubernetes_out.txt

## Files in repository
