FROM php:8.2-cli AS builder
WORKDIR /app
COPY index.php .

FROM php:8.2-cli
WORKDIR /app
COPY --from=builder /app .
CMD ["php", "-S", "0.0.0.0:8000"]
