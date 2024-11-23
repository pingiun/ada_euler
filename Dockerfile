# Use a base image with Linux support
FROM mcr.microsoft.com/devcontainers/base:debian

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    gnat \
    gprbuild \
    gcc \
    make \
    curl \
    git \
    gdb \
    && apt-get clean

COPY bashrc.sh /home/vscode/.bashrc
