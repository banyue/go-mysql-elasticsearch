all: build

build: build-elasticsearch

build-elasticsearch:
	go build -o bin/go-mysql-elasticsearch ./cmd/go-mysql-elasticsearch

test:
	go test --race ./...

clean:
	go clean -i ./...
	@rm -rf bin
