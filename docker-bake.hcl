group "default" {
  targets = ["build"]
}

target "build" {
  context    = "."
  dockerfile = "Dockerfile"
  tags = ["local/docker-checks-demo:latest"]
}

# Target de validación (checks)
target "validate-build" {
  inherits = ["build"]
  call = "check"
}