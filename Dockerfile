# Use official Flutter image
FROM cirrusci/flutter:stable

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Get dependencies
RUN flutter pub get

# Build the app (example for web)
RUN flutter build web

# Default command (optional)
CMD ["flutter", "run", "-d", "web-server"]
