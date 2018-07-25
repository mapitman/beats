default: build

build:
	go get ./...
	go build

install:
	go install

docker:
	docker build -t mapitman/beats:latest .

run:
	docker run --rm mapitman/beats