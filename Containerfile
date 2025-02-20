FROM golang:1.23-alpine as builder
WORKDIR /go/src
COPY . .
RUN apk update && apk add make git && make install

FROM alpine:3.21.3
COPY --from=builder /go/bin/foo /bin/foo
ENTRYPOINT /bin/foo
