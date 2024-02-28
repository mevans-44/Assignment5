# Builder Stage
FROM alpine AS builder
WORKDIR /app
COPY data.txt .

# Final Stage
FROM fedora AS final
WORKDIR /app
COPY --from=builder /app/data.txt .