# devops-test

export AWS_ACCESS_KEY_ID=

export AWS_SECRET_ACCESS_KEY=

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 992382767287.dkr.ecr.us-east-1.amazonaws.com/my-app-repo

# Build your Docker image
docker build -f Dockerfile -t node-web .

# Tag the image
docker tag node-web:latest 992382767287.dkr.ecr.us-east-1.amazonaws.com/my-app-repo:1.0.0

# Push the image to ECR
docker push 992382767287.dkr.ecr.us-east-1.amazonaws.com/my-app-repo:1.0.0