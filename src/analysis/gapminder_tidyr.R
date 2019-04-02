library(tidyverse)

file_url <- "https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_wide.csv"


# Download 
download.file(file_url, 
              destfile = here("data/gapminder/raw/gapminder_wide.csv"))

# create wide gap file
gap_wide <- readr::read_csv("data/gapminder/raw/gapminder_wide.csv")

# make long
gap_long <- gap_wide %>%
  gather(obstype_year, obs_values, starts_with('pop'),
         starts_with('lifeExp'), starts_with('gdpPercap')) %>%
  separate(obstype_year, c("DV", "year"), sep = "_")

# challenge question
gap_long %>%
  group_by(continent, DV) %>%
  summarise(mean_DV = mean(obs_values)) %>%
  spread(key = DV, mean_DV)

#
gap_long <- gap_long %>% separate(obstype_year,into=c('obs_type','year'),sep="_")
gap_long$year <- as.integer(gap_long$year)

####
gap_normal <- gap_long %>% 
  spread(DV,obs_values)

###
gap_temp <- gap_long %>% 
  unite(var_ID,continent,country,sep="_")



