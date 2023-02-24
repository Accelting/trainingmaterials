# Download file: https://bit.ly/3OGtwsq 

# Open RStudio and an empty script
# Create a GGIR function call
# Define datadir and outputdir
# Tip 1: datadir should specify the path to out demo file
# Tip 2: outputdir should be an existing folder (different to datadir)
# Define mode to run GGIR parts 1 and 2
# Turn off the report generation for GGIR parts 4 and 5
# Turn off the generation of the visual report
# Run the script via the source button


# 1 - load GGIR
library(GGIR)

# 2 - GGIR function call

GGIR(# assignment 1
  datadir = "C:/GGIRtraining/file/",
  outputdir = "C:/GGIRtraining/assignments/",
  mode = 1:2,
  do.report = 2,
  visualreport = FALSE)
