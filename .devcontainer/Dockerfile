# Specify the latest Ubuntu base image
FROM rocker/r-ver:4.5.2

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive
ENV RENV_CONFIG_PAK_ENABLED=TRUE
# Update system packages and install dependencies. cache the 
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt/lists,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean && \
    apt-get update && apt-get install -y \
    git \
    vim \ 
    curl \
    cmake \
    gdal-bin \
    libgdal-dev \
    libudunits2-dev \
    libx11-dev \
    ca-certificates \
    xz-utils \
    locales \ 
    libfontconfig1-dev \
    libfreetype6-dev \ 
    libcairo2-dev \
    pandoc \
    && rm -rf /var/lib/apt/lists/*

# Set the default command when the container starts
CMD ["/bin/bash"]

RUN locale-gen en_US.UTF-8 && update-locale LANG=en_US.UTF-8
RUN curl --proto '=https' --tlsv1.2 -LsSf https://github.com/eitsupi/arf/releases/latest/download/arf-console-installer.sh | sh

# COPY .bashrc /root/.bashrc
COPY . .
