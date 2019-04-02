# Download gapminder data for analysis
# Use verb naming 
#

# load lib
library(here)

# what is url?
file_url <- "https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv"

download.file(file_url, 
              destfile = here("data/gapminder/raw/gapminder_data.csv"))