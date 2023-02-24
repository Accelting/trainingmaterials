# Download file: https://bit.ly/3OGtwsq 

# Run GGIR parts 1 and 2
# set up two thresholds for MVPA (100 and 140)

# tip: look up the documentation to find the parameter that allows to 
# control the mvpa threshold

# tip2: it is in params_phyact


# 1 - load GGIR
library(GGIR)

# 2 - GGIR function call

GGIR(# assignment 1
  datadir = "C:/GGIRtraining/file/",
  outputdir = "C:/GGIRtraining/assignments/",
  mode = 1:2,
  do.report = 2,
  visualreport = FALSE,
  mvpathreshold = c(100, 140))
