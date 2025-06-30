# Dockerfile at repo root

FROM docker:24.0.5-cli

# Install dependencies
RUN apk add --no-cache docker-compose bash curl

# Copy project files
WORKDIR /app
COPY . .

# Run Supabase services using docker-compose
CMD ["docker-compose", "-f", "docker-compose.yml", "up"]
