FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o service1 main.go

FROM alpine:latest
RUN apk add --no-cache ca-certificates wget
WORKDIR /root/
COPY --from=builder /app/service1 .
EXPOSE 8001
HEALTHCHECK --interval=10s --timeout=3s CMD wget -qO- http://localhost:8001/ping || exit 1
CMD ["./service1"]
