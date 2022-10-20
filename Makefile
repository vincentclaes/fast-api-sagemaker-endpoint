TAG=077590795309.dkr.ecr.eu-west-1.amazonaws.com/drift-ai/image-recommendation-on-sagemaker

build:
	#!/bin/bash
	docker build -t ${TAG} .

test: build
	docker run -p 8080:8080 ${TAG} serve

push: build
	aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 077590795309.dkr.ecr.eu-west-1.amazonaws.com
	docker push ${TAG}:latest

#docker build --platform=linux/amd64 -t 077590795309.dkr.ecr.eu-west-1.amazonaws.com/drift-ai/image-recommendation-on-sagemaker:latest .
#docker run -p 8080:8080 077590795309.dkr.ecr.eu-west-1.amazonaws.com/drift-ai/image-recommendation-on-sagemaker:latest
