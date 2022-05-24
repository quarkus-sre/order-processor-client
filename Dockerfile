FROM registry.access.redhat.com/ubi8/ubi-minimal
USER root
LABEL maintainer="Vinicius Ferraz"
# Update image
RUN microdnf update -y && rm -rf /var/cache/yum
RUN microdnf install curl -y && microdnf clean all
# Start the service
COPY client.sh client.sh
ENTRYPOINT ["./client.sh"]