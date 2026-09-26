# Specify the latest Ubuntu base image
FROM rocker/r-ver:4.5.2

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive
ENV RENV_PATHS_LIBRARY=/workspaces/beacr/.Rlibs 
ENV RENV_PATHS_LIBRARY_ROOT=/workspaces/beacr/.Rlibs
ENV RENV_CONFIG_PAK_ENABLED=TRUE
# Update system packages and install dependencies. cache the 
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt/lists,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean && \
    apt-get update && apt-get install -y \
    # System libraries many R packages need 
    curl \
    git \
    libcurl4-openssl-dev \ 
    libssl-dev \
    libxml2-dev \
    libgit2-dev \
    pandoc \
    r-base-dev \
    cmake \
    libuv1-dev \ 
    libfontconfig1-dev \
    libfreetype6-dev \
    libfribidi-dev  \
    libharfbuzz-dev \ 
    libtiff-dev \ 
    libwebp-dev  \ 
    libx11-dev \ 
    # build-essential \ 
    # To suppress LC_* warnings
    locales \ 
    && rm -rf /var/lib/apt/lists/*

# Set the default command when the container starts
CMD ["/bin/bash"]

RUN locale-gen en_US.UTF-8 && update-locale LANG=en_US.UTF-8

# RUN R -e 'renv::status()' 
# renv::restore()? 

# COPY .devcontainer/.Rprofile /home/ubuntu/.Rprofile
# Core dev tooling
# RUN install.r devtools remotes usethis testthat roxygen2 languageserver httpgd renv
# RUN install.r renv
