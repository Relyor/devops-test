# Hot to run the pipeline
The pipeline is triggered on each pull request event from any source branch to master. On each subsequent push on the source branch of that PR a new deployment is triggered

The version of the application and artifact is incremented as follows:
- if the source branch of the PR is a hotfix (it starts with **hotfix/\***) the patch will be incremented
- if the source branch of the PR is anything else the minor will be incremented

# Local setup

## Install docker
How to do it based on the distribution: https://docs.docker.com/engine/install/

> [!NOTE]
> If you use Windows and wsl2 it should work the same. Otherwise, Docker desktop can be used as an alternative

## Install terraform
Terraform can be installed following the instructions from here: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

> [!NOTE]
> Terraform version used 1.10.4

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
docker push <repo_endpoint>:<tag>
```
# Description

The entire terraform code is in the **infrastructure** directory. This is just a mockup, thus the terraform state is present on the github repository.

> [!CAUTION]
> The terraform state file should never be on github, publicly available. Always use another storage (e.g. S3) and a locking mechanism (DynamoDB)
