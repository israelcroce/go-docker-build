#Dockerfile

FROM golang:1.22.3-alpine

COPY . src/github.com/israelcroce/go-docker-build
RUN mv src/github.com/israelcroce/go-docker-build/bin/* bin

CMD [ "bin/go-docker-build" ]