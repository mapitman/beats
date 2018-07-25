# build stage
FROM golang:1.10 as build-env
ADD . /go/src/mapitman/beats
RUN cd /go/src/mapitman/beats && go get ./... && go build -o beats

# final stage
FROM scratch
# FROM gcr.io/distroless/base
WORKDIR /app
COPY --from=build-env /go/src/mapitman/beats/beats /app/beats
ENTRYPOINT ["/app/beats"]