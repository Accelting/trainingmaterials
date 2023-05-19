# Download file: https://bit.ly/3OGtwsq 
# Download sleeplog: https://bit.ly/3gJuxDF 


# assignment 1: ------
# Open RStudio and an empty script
# Create a GGIR function call
# Define datadir and outputdir
# Define mode to run GGIR parts 1 and 2
# Make sure you only analyse data from the first midnight onwards
# We are only interested in the analysis of the first 3 days
# ----------

# assignment 2: ------
# Derive MX-metrics as defined by Rowlands et al. (qlevels): M120, M60, M30, M5
# Derive intensity levels: 0, 50, 100, 200, 400, 800
# Derive the intensity gradient
# Use thresholds for MVPA: 100 and 140
# Advanced: calculate these variables over the windows: 0am to 7am, 7am to 10pm, 10pm to 0am next day
# ----------

# assignment 3: ------
# Detect SIBs with the "vanHees2015" algorithm
# Detect SPT with the "HDCZA" algorithm
# ----------


# assignment 4: ------
# Use sleeplog provided
# ----------

# Run the script via the source button

# 1 - load GGIR
library(GGIR)

# 2 - GGIR function call

GGIR(# assignment 3
  datadir = "C:/GGIRtraining/file/",
  outputdir = "C:/GGIRtraining/assignments/",
  overwrite = TRUE,
  strategy = 4,
  maxdur = 3,
  qlevels = c((1440 - 120) / 1440,
              (1440 - 60) / 1440,
              (1440 - 30) / 1440,
              (1440 - 5) / 1440),
  ilevels = c(0, 50, 100, 200, 400, 800),
  iglevels = TRUE,
  mvpathreshold = c(100, 140),
  qwindow = c(0, 7, 22, 24),
  HASIB.algo = "vanHees2015",
  HASPT.algo = "HDCZA",
  loglocation = "C:/GGIRtraining/sleeplog/sleeplog_GGIRtraining.csv",
  colid = 1, coln1 = 2, nnights = 7,
  # we need to take care of the ID in order to match sleeplog ID with GGIR ID
  # so, we set idloc = 6 (see documentation on this argument), and we overwrite
  # the output from part 2 onwards (this is where GGIR defines the ID)
  idloc = 6, mode = 2:5, overwrite = TRUE)

