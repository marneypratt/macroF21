
# make sure the 'tidyverse' package is installed and loaded to run the code below

# macro and master.taxa data must both be imported before you can run the code below
  
  macro.ffg <- ___ %>% #replace blank with data frame name
    
    #calculate density for each row
    mutate(invDens = number/benthicArea) %>% 
    
    #join taxonomic information 
    left_join(., master.taxa) %>% 
  
  
  # Sum each FFG density for each sampleID 
  #replace blank with grouping variables as needed such as season, location, year, etc
  group_by(sampleID, FFG, year) %>% 
  dplyr::summarise (ffgDens = sum(invDens, na.rm = TRUE))


