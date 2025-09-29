# OpenSearch Container Images

OpenSearch images for development workflows.

## Streams

This image suite provides 2 streams for images:

* `stable` - Our production/stable upstream for projects. Use this by default.
* `latest` - Recently merged changes which will be merged into `stable` as part of a release.

## Images

Images are available in the following registries:

* `ghcr.io`
* `docker.io`

## Image List

Below is the list of images we provide.

By default we recommend the following registry and stream:

```
REGISTRY=docker.io
STREAM=stable
```

**Stable**

```
REGISTRY/skpr/opensearch:1.x-v2-STREAM
REGISTRY/skpr/opensearch:1.3.x-v2-STREAM
REGISTRY/skpr/opensearch:2.x-v2-STREAM
REGISTRY/skpr/opensearch:3.x-v2-STREAM
```

## Users, Roles and Permissions

### Users

There are three users created with corresponding roles:

* reader
* writer
* admin

Permissions can be found in the [OpenSearch documentation](https://opensearch.org/docs/latest/security/access-control/permissions/).

## Building Images

Build the images locally using the following command:

```bash
$ make
```
