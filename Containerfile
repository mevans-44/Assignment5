# Builder Stage
FROM alpine AS builder
WORKDIR /tmp
COPY data.txt .

# Final Stage
FROM fedora AS final
WORKDIR /
COPY --from=builder /data.txt .
