FROM golang:1.6-alpine
MAINTAINER b3vis
WORKDIR /go/src
RUN apk add git --no-cache && \
    git clone --depth=50 --branch=master https://github.com/mdlayher/edgemax_exporter.git && \
    cd /go/src/edgemax_exporter && \
    go get github.com/axw/gocov/gocov && \
    go get github.com/mattn/goveralls && \
    go get golang.org/x/tools/cmd/cover && \
    go get github.com/golang/lint/golint && \
    go get -t -v ./... && \
    go get -d ./... && \
    golint ./... && \
    go vet ./... && \
    go build ./... && \
    apk del git && \
    rm -rf /go/src/
EXPOSE 9135
CMD /go/bin/edgemax_exporter $ARGUMENTS
