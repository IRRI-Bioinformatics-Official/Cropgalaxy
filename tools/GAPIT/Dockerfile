# Use official R base image
#FROM rocker/r-ver:4.3.0
FROM rocker/verse

# Install system dependencies required for devtools and R packages
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libgit2-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    git \
    wget \
    build-essential \
    && apt-get clean

# Install devtools and other required R packages
#RUN R -e "install.packages(c('devtools', 'data.table', 'gplots', 'lme4'), repos='https://cloud.r-project.org/')"

# Install GAPIT3 from GitHub
#RUN R -e "devtools::install_github('jiabowang/GAPIT3')"

# Set working directory
WORKDIR /home/gapit

# Default command
CMD [ "R" ]