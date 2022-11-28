# -------------------------------------------------------------------------
# GGIR basic training: Running GGIR for first time. 
# Vincent van Hees
# Jairo H Migueles
# -------------------------------------------------------------------------


# 1 - Install GGIR
install.packages("GGIR")
library(GGIR)

# 2 - Run GGIR with the default options
GGIR(datadir = "C:/mystudy/mydata",
     outputdir = "D:/myresults",
     mode = 1:2, 
     do.report = 2,
     visualreport = FALSE)


# 3 - try it out yourself!
