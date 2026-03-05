# Pending Changes

## Modified Files

### `Dockerfile`
- Updated base image from `golang:1.10` to `golang:1.24`
- Added module-aware build steps (`COPY go.mod go.sum`, `go mod download`)
- Set `CGO_ENABLED=0` for a fully static binary
- Cleaned up build and copy paths

### `Makefile`
- Removed outdated `go get -u -v ./...` from the `build` target

## New Files

### `.github/workflows/ci.yml`
GitHub Actions workflow:
- Builds on every push to any branch
- On `v*` tags: builds and pushes Docker image to Docker Hub (tagged with the git tag and `latest`), then creates a GitHub Release with auto-generated notes

### `go.mod`
Go module definition (`github.com/mapitman/beats`), requiring `github.com/mapitman/internet-time v1.0.0`

### `go.sum`
Dependency checksums for `internet-time`
