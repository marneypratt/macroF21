
# this code will import the macroinvertebrate data for the NEON river MART
# see the file called mart_metadata.txt for details about all these variables 

# make sure the readr` package is loaded before importing these files

mart.macro.precip <- read_csv("data/mart/mart.macro.precip.csv",
                 col_types = cols(date = col_date(format = "%m/%d/%Y"),
                                  year = col_factor(),
                                  sampleTime = col_factor(levels=c(
                                    "Spring 2018",
                                    "Summer 2018", 
                                    "Fall 2018", 
                                    "Spring 2019",
                                    "Summer 2019",
                                    "Fall 2019",
                                    "Summer 2020"
                                    )),
                                  
                                  season = col_factor(levels = c("Spring", "Summer","Fall"))
                                  )) 



