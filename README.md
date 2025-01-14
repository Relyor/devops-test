# devops-test

export AWS_ACCESS_KEY_ID=

export AWS_SECRET_ACCESS_KEY=

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 471112661735.dkr.ecr.us-east-1.amazonaws.com/node-web

# Build & tag your Docker image
docker build -f Dockerfile -t 471112661735.dkr.ecr.us-east-1.amazonaws.com/node-web:1.0.0 .

# Push the image to ECR
docker push 471112661735.dkr.ecr.us-east-1.amazonaws.com/node-web:1.0.0
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->