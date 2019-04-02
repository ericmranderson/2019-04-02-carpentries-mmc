# Download gapminder data for analysis
# Use verb naming 
#

library(here)

file_url <- "https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv"

download.file(file_url, 
              destfile = here("data/gapminder/raw/gapminder_data.csv"))