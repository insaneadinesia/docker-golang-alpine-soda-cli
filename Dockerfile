FROM golang:1.16.12-alpine3.15
LABEL maintainer="Rachmat Adi Prakoso <rachmat.adi.p@gmail.com>"

# Install git.
RUN apk update && apk add --no-cache git

# Install soda
RUN go get github.com/gobuffalo/pop/...
RUN go install github.com/gobuffalo/pop/soda@latest
