# Use the official Rust image as a base
FROM rust:1.68-slim

# Install additional dependencies if needed
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace

# Copy your project files
COPY . .

# Run any setup commands
RUN cargo build

# Set the default command (optional)
CMD ["bash"]
