FROM node:latest
LABEL maintainer "tiffany.galicia@gmail.com"
ARG BUILD_VERSION
ARG BUILD_DATE
ARG APPLICATION_NAME
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.application=$APPLICATION_NAME
LABEL org.label-schema.version=$BUILD_VERSIO
RUN mkdir -p /var/node
WORKDIR /var/node
COPY . .
RUN npm install
EXPOSE 3000
CMD ./bin/www
