
# make sure the readr` package is loaded before importing these files

# this code will import the macroinvertebrate and water quality data for the Mill River and the Lower Hop Brook
# see the file called mill.hopb_metadata.txt for details about all these variables and methods

mill.hopb.waterQ <- read_csv("data/mill.hopb/mill.hopb.waterQ.csv",
                 col_types = cols(date = col_date(format = "%Y-%m-%d"),
                                  year = col_factor(),
                                  siteID = col_factor()
                                  )) 


mill.hopb.macro <- read_csv("data/mill.hopb/mill.hopb.macro.csv",
                             col_types = cols(date = col_date(format = "%Y-%m-%d"),
                                              year = col_factor(),
                                              siteID = col_factor(),
                                              sampleTime = col_factor(levels=c(
                                                "Spring 2018",
                                                "Summer 2018", 
                                                "Fall 2018", 
                                                "Spring 2019",
                                                "Summer 2019",
                                                "Fall 2019")),
                                              season = col_factor(levels = c("Spring","Summer","Fall"))
                             )) 
