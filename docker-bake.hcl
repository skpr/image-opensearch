variable "STREAM" {
  default = "latest"
}

variable "VERSION" {
  default = "v2"
}

variable "PLATFORMS" {
  default = ["linux/amd64", "linux/arm64"]
}

# Common target: Everything inherits from this
target "_common" {
  platforms = PLATFORMS
}

group "default" {
  targets = [
    "1x",
    "2x",
    "3x",
  ]
}

target "1x" {
  inherits = ["_common"]
  context  = "1.x"

  contexts = {
    from_image = "docker-image://docker.io/opensearchproject/opensearch:1.3.20"
  }

  tags = [
    "docker.io/skpr/opensearch:1.3.x-${VERSION}-${STREAM}",
    "docker.io/skpr/opensearch:1.x-${VERSION}-${STREAM}",
    "ghcr.io/skpr/opensearch:1.3.x-${VERSION}-${STREAM}",
    "ghcr.io/skpr/opensearch:1.x-${VERSION}-${STREAM}",
  ]
}

target "2x" {
  inherits = ["_common"]
  context  = "2.x"

  contexts = {
    from_image = "docker-image://docker.io/opensearchproject/opensearch:2.19.4"
  }

  tags = [
    "docker.io/skpr/opensearch:2.x-${VERSION}-${STREAM}",
    "ghcr.io/skpr/opensearch:2.x-${VERSION}-${STREAM}",
  ]
}

target "3x" {
  inherits = ["_common"]
  context  = "3.x"

  contexts = {
    from_image = "docker-image://docker.io/opensearchproject/opensearch:3.4.0"
  }

  tags = [
    "docker.io/skpr/opensearch:3.x-${VERSION}-${STREAM}",
    "ghcr.io/skpr/opensearch:3.x-${VERSION}-${STREAM}",
  ]
}
