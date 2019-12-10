FROM golang:1.13.5-alpine
LABEL maintainer="Rachmat Adi Prakoso <rachmat.adi.p@gmail.com>"

# Install git.
RUN apk update && apk add --no-cache git

# Install soda
RUN go get github.com/gobuffalo/pop/...
RUN go install github.com/gobuffalo/pop/soda