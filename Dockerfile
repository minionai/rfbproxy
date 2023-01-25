#
# Build rfbproxy in a container, and copy to /out
# Usage:
#   docker build -t rfbproxy --platform linux/amd64 .
#   docker run -it --rm -v $(pwd):/build --platform linux/amd64 rfbproxy
#

FROM rust:alpine

RUN apk add --no-cache musl-dev build-base pkgconfig openssl-dev protobuf-dev lame-dev libpulse

WORKDIR /build

CMD cargo build --release
