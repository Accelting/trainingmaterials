# -------------------------------------------------------------------------
# GGIR data processing
# Vincent van Hees
# Jairo H Migueles
# -------------------------------------------------------------------------


# Load GGIR ---------------------------------------------------------------
if ("GGIR" %in% installed.packages()) {
  if (packageVersion("GGIR") < "2.8.0") {
    install.packages("GGIR")
  } else {
    "Ready to go!"
  }
} else {
  install.packages("GGIR")
}

library(GGIR)

# Set up directories ------------------------------------------------------
datadir = c()
outputdir = c()
loglocation = c()


# Define function call ----------------------------------------------------

GGIR::GGIR(datadir = datadir,
           outputdir = outputdir)



