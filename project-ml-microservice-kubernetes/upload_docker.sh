#to run: ./upload_docker.sh <<dockerpath>> <<docker image>>

# Step 1:
# Create dockerpath
#dockerpath=anandnk90/udacitymlapp
dockerpath=${1}

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#docker login --username=anandnk90 --email=anandnk90@gmail.com
echo -n Password:
read -s passphrase
docker login --username anandnk90 --password $passphrase
docker tag ${2} $dockerpath:udacitymlapp

# Step 3:
# Push image to a docker repository
docker push $dockerpath