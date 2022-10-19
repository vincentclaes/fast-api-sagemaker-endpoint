#!/bin/bash
docker build --platform=linux/amd64 -t 077590795309.dkr.ecr.eu-west-1.amazonaws.com/drift-ai/image-recommendation-on-sagemaker:latest .
docker run -p 8080:8080 077590795309.dkr.ecr.eu-west-1.amazonaws.com/drift-ai/image-recommendation-on-sagemaker:latest serve
#docker push 077590795309.dkr.ecr.eu-west-1.amazonaws.com/drift-ai/image-recommendation-on-sagemaker:latest