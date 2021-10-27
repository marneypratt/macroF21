
# make sure the 'tidyverse' package is installed and loaded to run the code below

# macro and master.taxa data must both be imported before you can run the code below

macro.ffg <- ___ %>% #replace blank with data frame name
  
  #join taxonomic information 
  left_join(., master.taxa) %>% 
  
  # Sum FFG for each sampleID 
  #replace blank with grouping variables as needed such as season, location, year, etc
  group_by(sampleID, FFG, ___) %>% 
  dplyr::summarise (num.ffg = sum(number, na.rm = TRUE))


###sum the total number of all organisms for each sample
macro.sample <- ___ %>%  #replace blank with the same data frame name from above
  group_by(sampleID) %>% 
  dplyr::summarise (total.num = sum(number, na.rm = TRUE))

# join the number of each FFG with total number of all organisms
macro.ffg <- left_join(macro.ffg, macro.sample, by = "sampleID")

###calculate the relative abundance 
macro.ffg <-mutate(macro.ffg, relab=num.ffg/total.num)