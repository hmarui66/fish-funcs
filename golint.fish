function golint
    golangci-lint run --enable-all --disable goimports,maligned,dupl --print-issued-lines=false --exclude-use-default=false --tests=false ./...
end