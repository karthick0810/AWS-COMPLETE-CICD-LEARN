# Login to ECR
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 754450290666.dkr.ecr.us-east-2.amazonaws.com

cd JAVA
# Build, tag, push karthickapp image
docker build -t karthickapp .
docker tag karthickapp:latest 754450290666.dkr.ecr.us-east-2.amazonaws.com/karthickapp:latest
docker push 754450290666.dkr.ecr.us-east-2.amazonaws.com/karthickapp:latest
cd ../NGINX
# Build, tag, push nginx image
docker build -t nginx .
docker tag nginx:latest 754450290666.dkr.ecr.us-east-2.amazonaws.com/nginx:latest
docker push 754450290666.dkr.ecr.us-east-2.amazonaws.com/nginx:latest

# Remove local images
docker rmi karthickapp:latest
docker rmi 754450290666.dkr.ecr.us-east-2.amazonaws.com/karthickapp:latest
docker rmi nginx:latest
docker rmi 754450290666.dkr.ecr.us-east-2.amazonaws.com/nginx:latest
