FROM from_image

ENV OPENSEARCH_JAVA_OPTS="-Xms512m -Xmx512m"

ENV OPENSEARCH_INITIAL_ADMIN_PASSWORD='SkprRock5!'

# This image is intended for local development purposes only.
ENV discovery.type="single-node"

# Disable HTTPS for local testing. Certificate management is difficult for local
# development and we have found it results in a large portion of time spent trying
# to work around self signed certificates.
ENV plugins.security.ssl.http.enabled="false"

# Configuration to preload a set of credentials for local development:
#
# Administrator user:
#   Username: admin
#   Password: SkprRock5!
#
# Writer user for indexing content:
#   Username: writer
#   Password: writer
#
# Reader user for querying content:
#   Username: reader
#   Password: reader
#
ADD internal_users.yml /usr/share/opensearch/config/opensearch-security/internal_users.yml
ADD roles.yml /usr/share/opensearch/config/opensearch-security/roles.yml
ADD roles_mapping.yml /usr/share/opensearch/config/opensearch-security/roles_mapping.yml
