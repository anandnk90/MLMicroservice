#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
app="udacityml/app"
docker build -t ${app} .

# Step 2: 
docker image ls

# Step 3: 
docker run -d -p 8000:80 ${app}
docker ps