
# make sure the `readr` package is installed and loaded before you run the code below
# this code will import the macroinvertebrate data for the Mill River only
# this file includes all the Mill River data from 2018-2019
# see the file called mill.macro_metadata.txt for details about all these variables and methods

# make sure the readr` package is loaded before importing these files

mill.waterQ <- read_csv("data/mill//mill.waterQ.csv",
                 col_types = cols(date = col_date(format = "%m/%d/%Y"),
                  
                  location = col_factor(levels = c(
                    "Downstream","Upstream")), 
                  
                  season = col_factor(levels = c("Summer","Fall")), 
                  
                  year = col_factor()
                 )) 


