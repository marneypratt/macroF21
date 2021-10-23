# use this code to find the most abundant taxa in each FFG

mart.sum <- mart.macro.precip %>% # put the name of the data frame here
  filter(!is.na(number)) %>% # remove missing values from the variable of interest
  group_by(FFG, acceptedTaxonID) %>% # put the name of the grouping variables here
  summarize(total.num = sum(number), #add up the number of each
            n()) %>% #number of samples of each
  arrange(FFG, desc(total.num)) %>% #sort by FFG and then descending by number
  left_join(., master.taxa) #add additional taxonomica information