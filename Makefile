#!/usr/bin/make -f

REGISTRY=skpr/opensearch
VERSION_TAG=v2-latest
ARCH=amd64

build:
	docker build -t ${REGISTRY}:dev-${VERSION_TAG}-${ARCH} dev

push:
	docker push ${REGISTRY}:dev-${VERSION_TAG}-${ARCH}

manifest:
	$(eval IMAGE=${REGISTRY}:dev-${VERSION_TAG})
	docker manifest create ${IMAGE} --amend ${IMAGE}-arm64 --amend ${IMAGE}-amd64
	docker manifest push ${IMAGE}

.PHONY: *
