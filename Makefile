PROJECT_NAME := go-docker-build

MAIN_DIR := cmd/app
MAIN_PATH := ${MAIN_DIR}/main.go

# ==================================================================================== #
# Golang Image
# ==================================================================================== #

.PHONY: build/golang
build/golang:
	GOOS=linux GOARCH=amd64 go build -o infra/docker/golang/bin/${PROJECT_NAME} ${MAIN_PATH}

.PHONY: docker/build/golang
docker/build/golang:
	docker build -t go-docker-build infra/docker/golang

# ==================================================================================== #
# Scratch Image
# ==================================================================================== #

.PHONY: build/scratch
build/scratch:
	GOOS=linux GOARCH=amd64 go build -o infra/docker/scratch/bin/${PROJECT_NAME} ${MAIN_PATH}
	
.PHONY: docker/build/scratch
docker/build/scratch:
	docker build -t go-docker-build infra/docker/scratch