# build stage
FROM golang:1.10 as build-env
ADD . /src
RUN cd /src && go build -o beats

# final stage
FROM scratch
# FROM gcr.io/distroless/base
WORKDIR /app
COPY --from=build-env /src/beats /app/beats
ENTRYPOINT ["/app/beats"]