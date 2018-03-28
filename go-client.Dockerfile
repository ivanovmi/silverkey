FROM golang:1.9.4-alpine
RUN apk add --update git
WORKDIR /go/src/app
COPY src .

RUN go get -d -v ./...
RUN go install -v ./...
RUN go build
#CMD ["app"]

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
