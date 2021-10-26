
# make sure the `readr` package is installed and loaded before you run the code below
# this code will import the macroinvertebrate data for the Mill River only
# this file includes the Mill River data from  the Summer and Fall of 2019
# and includes the macroinvertebrates sampled plus whatever 
# water quality measurements were made at the same time
# see the file called mill.macro.waterQ_metadata.txt for details about all these variables and methods

# make sure the readr` package is loaded before importing these files

mill.macro.waterQ <- read_csv("data/mill//mill.macro.waterQ.csv",
                 col_types = cols(date = col_date(format = "%Y-%m-%d"),
                  
                  sampleTime = col_factor(levels=c(
                    "Summer 2019",
                    "Fall 2019")),
                  
                  location = col_factor(levels = c(
                    "Downstream","Upstream")), 
                  
                  season = col_factor(levels = c("Summer","Fall")), 
                  
                  year = col_factor()
                 )) 
