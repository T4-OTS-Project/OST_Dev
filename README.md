# OTS DOCKER BUILD

OTS is a one-time-secret sharing platform. The secret is encrypted with a symmetric 256bit AES encryption in the browser before being sent to the server. Afterwards an URL containing the ID of the secret and the password is generated. The password is never sent to the server so the server will never be able to decrypt the secrets it delivers with a reasonable effort. Also the secret is immediately deleted on the first read.
Features

    AES 256bit encryption
    Server does never get the password
    Secret is deleted on first read

# Steps to Build oun Docker image for  OTS application 

1) Clone  original  application repo git@github.com:Luzifer/ots.git to your Github repository
2) Check all instructions for the  original  application and  for Dockerfile in documentation 
## Original Docker  file will look like  code  below:

FROM luzifer/archlinux as builder

ENV CGO_ENABLED=0 \
    GOPATH=/go

COPY . /go/src/github.com/Luzifer/ots
WORKDIR /go/src/github.com/Luzifer/ots

RUN set -ex \
 && pacman --noconfirm -Syy \
      curl \
      git \
      go \
      make \
      nodejs-lts-fermium \
      npm \
      tar \
      unzip \
 && make -C src -f ../Makefile generate-inner \
 && make download_libs generate-apidocs \
 && go install \
      -ldflags "-X main.version=$(git describe --tags --always || echo dev)" \
      -mod=readonly


FROM alpine:latest

LABEL maintainer "Knut Ahlers <knut@ahlers.me>"

RUN set -ex \
 && apk --no-cache add \
      ca-certificates

COPY --from=builder /go/bin/ots /usr/local/bin/ots

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/ots"]
CMD ["--"]


## This Dockerfile builds an image based on luzifer/archlinux as the builder image and alpine:latest as the final image. The resulting image contains an installation of a Go application called ots (One-Time-Secret), which is built using the source code located at github.com/Luzifer/ots.

## Usage
#### To use this image, you can build it using the following command:


### docker build -t <your_image_name> .

This will build an image with the name <your_image_name>.

You can then run a container using the following command:

