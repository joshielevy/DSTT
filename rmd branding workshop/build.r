library(rmarkdown)
library(ggplot2)
library(scales)
library(openxlsx)
library(tidyverse)
library(stringr)
# library(ggseas)    # for seasonal adjustment on the fly
# library(forcats)   # for munging factors
# library(stringi)   # for generating pseudo lating lorem ipsum text

# Run all the files in the "R" folder, which create project assets
# like the corporate colours and the function we use to build documents.
assets <- list.files(path = "R", pattern = "\\.R$", full.names = TRUE)
created_assets <- lapply(assets, source)
rm(assets, created_assets)

source("build_doc.r")

# download, reshape, and save the data
# source("prep/download-mrtes.Ra")

# load in the data (not really necessary)
# load("data/mrtes.rda")

# build the actual report.  Note that the build will happen in the user's home directory (~).
build_doc(subdir = "branding_example", report_name="branding_example", output_format="all")