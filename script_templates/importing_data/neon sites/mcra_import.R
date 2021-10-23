
# this code will import the macroinvertebrate data for the MCRA NEON site
# see the file called mcra_metadata.txt for details about all these variables 

# make sure the readr` package is loaded before importing these files

mcra.macro <- read_csv("data/mcra/mcra.macro.csv",
                 col_types = cols(date = col_date(format = "%Y-%m-%d"),
                  
                  sampleTime = col_factor(levels=c(
                    "Summer 2017",
                    "Fall 2017",
                    "Spring 2018",
                    "Summer 2018", 
                    "Fall 2018", 
                    "Spring 2019",
                    "Summer 2019",
                    "Fall 2019",
                    "Early Summer 2020",
                    "Summer 2020"
                    )),
                  
                  season = col_factor(levels = c("Spring", "Summer","Fall")), 
                  
                  year = col_factor()
                 )) 
