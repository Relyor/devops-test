# Hot to run the pipeline
The pipeline is triggered on each pull request event from any source branch to master. On each subsequent push on the source branch of that PR a new deployment is triggered

The version of the application and artifact is incremented as follows:
- if the source branch of the PR is a hotfix (it starts with hotfix/*) the patch will be incremented
- if the source branch of the PR is anything else the minor will be incremented


### Local setup
# Before you run anything locally

Export the AWS variables on the environment

```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
```

## How to manually update your docker image to ecr

```
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <repo_endpoint>
```

# Build & tag your Docker image
```
docker build -f Dockerfile -t <repo_endpoint>:<tag> .
```

# Push the image to ECR
```
docker push 471112661735.dkr.ecr.us-east-1.amazonaws.com/node-web:1.0.0
```

