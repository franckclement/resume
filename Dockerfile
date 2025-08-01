FROM frolvlad/alpine-java
MAINTAINER Minn Soe <contributions@minn.io>

ENV LANG C.UTF-8
ENV BUILD_PACKAGES \
	bash curl-dev ruby-dev build-base nodejs libffi-dev libxml2 libxslt \
	libxslt-dev libxml2-dev zlib-dev zlib git
ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler ruby-rdoc ruby-irb

#####################################################################
## Install packages
#####################################################################
RUN apk update && \
		apk upgrade && \
		apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/* && \
		gem install bundler