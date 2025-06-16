#!/usr/bin/make -f

FROM=docker.io/opensearchproject/opensearch:1.1.0
REGISTRY=skpr/opensearch
OS_VERSION=1.x
VERSION_TAG=v2-latest
ARCH=amd64

build:
	$(eval IMAGE=${REGISTRY}:dev-${VERSION_TAG})
	docker build --build-arg=FROM=${FROM} -t ${IMAGE}-${ARCH} ${OS_VERSION}

push:
	$(eval IMAGE=${REGISTRY}:dev-${VERSION_TAG})
	docker push ${IMAGE}-${ARCH}

manifest:
	$(eval IMAGE=${REGISTRY}:dev-${VERSION_TAG})
	docker manifest create ${IMAGE} --amend ${IMAGE}-arm64 --amend ${IMAGE}-amd64
	docker manifest push ${IMAGE}

.PHONY: *
