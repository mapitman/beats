# build stage
FROM golang:1.24 AS build-env
WORKDIR /src
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -o beats

# final stage
FROM scratch
WORKDIR /app
COPY --from=build-env /src/beats /app/beats
ENTRYPOINT ["/app/beats"]