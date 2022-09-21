# -------------------------------------------------------------------------
# GGIR basic training: Running GGIR for first time. 
# Vincent van Hees
# Jairo H Migueles
# -------------------------------------------------------------------------


# 1 - Install GGIR

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

# 2 - Run GGIR with the default options
GGIR(datadir = "C:/mystudy/mydata",
     outputdir = "D:/myresults")


# 3 - try it out yourself!