
# this code will import the NEON data for OKSR and MAYF
# see the file called oksr.mayf_metadata.txt for details about all these variables 

# make sure the readr` package is loaded before importing these files

oksr.macro.weather <- read_csv("data/mayf.oksr/oksr.macro.weather.csv", 
                 col_types = cols(date = col_date(format = "%Y-%m-%d"),

                  year = col_factor()
                 )) 


mayf.macro.weather <- read_csv("data/mayf.oksr/mayf.macro.weather.csv",
                               col_types = cols(date = col_date(format = "%Y-%m-%d"),
                                                
                                                year = col_factor()
                               )) 


#joins the two datasets together into one dataset
macro.weather <- bind_rows(oksr.macro.weather, mayf.macro.weather) 