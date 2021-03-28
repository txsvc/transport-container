.PHONY = all build_container push_container

IMAGE_TAG = 1.0.0
IMAGE_NAME = transport
REGISTRY = txsvc

all: build_container push_container

build_container:
	docker build -t fupas/${IMAGE_NAME}:${IMAGE_TAG} .

push_container:
	docker tag fupas/${IMAGE_NAME}:${IMAGE_TAG} eu.gcr.io/${REGISTRY}/${IMAGE_NAME}:latest
	docker push eu.gcr.io/${REGISTRY}/${IMAGE_NAME}:latest