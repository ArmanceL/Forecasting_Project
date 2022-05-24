#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
  "here", # for the project's organization
  "readr", "tidyverse", "lubridate", "tsibble", "fpp3", "arsenal", # for wrangling
  "ggrepel", "gghighlight", "patchwork", "maps", "scales", "tidyquant", "crosstalk", "ggpubr", "cowplot", "ggfortify",  # for plotting
  "bookdown", "rmarkdown", "knitr", "systemfonts", "kableExtra","plotly", "leaflet", "countrycode", # for the report
  "stargazer", "corpcor", "corrplot", "ppcor", "GGally", "mctest", "pls", "factoextra", # for the analysis
  "forecast", "visdat", "vars","padr"
)

purrr::walk(packages, library, character.only = TRUE)

######################################################
## The following sets a few option for nice reports ##
######################################################

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = FALSE
)

