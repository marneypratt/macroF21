
# make sure the 'tidyverse' package is installed and loaded to run the code below

# data must also be imported before you can run the code below

macro.ffg <- ___ %>% #replace blank with data frame name
  
  # Sum each FFG density for each sampleID 
  #replace blank with grouping variables as needed such as season, location, year, etc
  group_by(sampleID, FFG, ___) %>% 
  dplyr::summarise (ffgDens = sum(invDens, na.rm = TRUE))


