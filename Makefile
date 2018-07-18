default: build

build:
	docker build -t mapitman/beats:latest .

run:
	docker run --rm mapitman/beats