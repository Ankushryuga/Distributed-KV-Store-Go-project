#!/bin/bash

go run cmd/distributed_kv_store/main.go --config=internal/config/node1.json
go run cmd/distributed_kv_store/main.go --config=internal/config/node2.json
go run cmd/distributed_kv_store/main.go --config=internal/config/node3.json