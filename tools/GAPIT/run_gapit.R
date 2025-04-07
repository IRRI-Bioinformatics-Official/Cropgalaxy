#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)
genofile <- args[1]
phenofile <- args[2]
method <- args[3]
output_dir <- args[4]

dir.create(output_dir, showWarnings = FALSE, recursive = TRUE)
setwd(output_dir)

# Load GAPIT functions
source("https://raw.githubusercontent.com/jiabowang/GAPIT/refs/heads/master/gapit_functions.txt")

# Read input data
myG <- read.table(genofile, header = TRUE)
myY <- read.table(phenofile, header = TRUE)

# Run GAPIT with chosen method
myGAPIT <- GAPIT(
    Y = myY,
    G = myG,
    model = method  # e.g., "BLINK" or "FarmCPU"
)
