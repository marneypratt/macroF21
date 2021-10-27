
# make sure the 'tidyverse' package is installed and loaded to run the code below

# macro and master.taxa data must both be imported before you can run the code below

macro.density <- ___ %>% #replace blank with data frame name
  
  #calculate density for each row
  mutate(invDens = number/benthicArea) %>% 
  
  #join taxonomic information 
  left_join(., master.taxa) %>% 
  
  # Sum for each sampleID and the different taxa 
  # remove the organism_aggr variable if you want
  # density of ALL macroinvertebrates
  # replace blank in the group_by function with grouping variables as needed 
  # such as season, location, year, etc
  group_by(sampleID, organism_aggr, ___) %>% 
  dplyr::summarise (density = sum(invDens, na.rm = TRUE)) %>% 
  filter(organism_aggr == "___") #put the type of organism you want to keep here (remove this line and pipe above if you want all macros)


