
# this code will import the macroinvertebrate data for the NEON river SYCA
# see the file called syca_metadata.txt for details about all these variables 

# make sure the readr` package is loaded before importing these files

syca.macro.waterQ <- read_csv("data/syca/syca.macro.waterQ.csv",
                 col_types = cols(date = col_date(format = "%Y-%m-%d"),
                  
                  year = col_factor()
                 )) 


syca.abiotic.daily <- read_csv("data/syca/syca.abiotic.daily.csv",
                              col_types = cols(date = col_date(format = "%Y-%m-%d"),
                                               
                                               year = col_factor()
                              )) 