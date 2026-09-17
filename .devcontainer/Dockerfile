FROM rocker/r2u:4.4.1

# System libraries many R packages need at compile time
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    pandoc \
    r-base-dev \
    && rm -rf /var/lib/apt/lists/*

# Core dev tooling
# RUN install.r devtools remotes usethis testthat roxygen2 languageserver httpgd renv
RUN install.r renv
