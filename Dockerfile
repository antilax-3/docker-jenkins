FROM jenkins/jenkins:alpine

# set version label
LABEL maintainer="Nightah"

# Install the latest Docker CE binaries
RUN \
echo "**** install runtime packages ****" && \
apk add --no-cache \
	docker && \
echo "**** cleanup ****" && \
rm -rf \
    /tmp/*