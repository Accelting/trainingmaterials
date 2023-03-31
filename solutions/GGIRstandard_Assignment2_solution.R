# Download file: https://bit.ly/3OGtwsq 

# Open RStudio and an empty script
# Create a GGIR function call
# Define datadir and outputdir
# Define mode to run GGIR parts 1 and 2
# Make sure you only analyse data from the first midnight onwards
# We are only interested in the analysis of the first 3 days

# new ------
# Derive MX-metrics as defined by Rowlands et al. (qlevels): M120, M60, M30, M5
# Derive intensity levels: 0, 50, 100, 200, 400, 800
# Derive the intensity gradient
# Use thresholds for MVPA: 100 and 140
# ----------

# Run the script via the source button
# Advanced: look up the output and meaning of variables (vignette)
# Optional: try to run GGIR parts 1 and 2 on your own data


# 1 - load GGIR
library(GGIR)

# 2 - GGIR function call

GGIR(# assignment 2
     datadir = "C:/GGIRtraining/file/",
     outputdir = "C:/GGIRtraining/assignments/",
     mode = 2,
     overwrite = TRUE,
     strategy = 4,
     maxdur = 3,
     qlevels = c((1440 - 120) / 1440,
                 (1440 - 60) / 1440,
                 (1440 - 30) / 1440,
                 (1440 - 5) / 1440),
     ilevels = c(0, 50, 100, 200, 400, 800),
     iglevels = TRUE,
     mvpathreshold = c(100, 140))
