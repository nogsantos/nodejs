all: build

build:
	@docker build --tag=nogsantos/node:latest .

release: build
	@docker build --tag=nogsantos/node:$(shell cat VERSION) .
