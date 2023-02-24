# Download file: https://bit.ly/3OGtwsq 

# Run the full pipeline of GGIR (parts 1, 2, 3, 4, and 5)
# try to calculate inactivity bouts of a minimum duration of 30 and 60 minutes


# tip: look up the documentation to find the parameter that allows to 
# control the duration of the inactivity bouts

# tip2: it is in params_phyact



# 1 - load GGIR
library(GGIR)

# 2 - GGIR function call

GGIR(# assignment 1
  datadir = "C:/GGIRtraining/file/",
  outputdir = "C:/GGIRtraining/assignments/",
  mode = 1:5,
  do.report = c(2, 4, 5),
  visualreport = FALSE,
  boutdur.in = c(30, 60))
