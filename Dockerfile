FROM golang:1.21-alpine

WORKDIR /app
COPY . .

RUN go mod download
RUN go build -o distributed_kv_store ./cmd/distributed_kv_store

EXPOSE 4000
ENTRYPOINT [ "./distributed_kv_store" ]