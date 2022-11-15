# -------------------------------------------------------------------------
# GGIR basic training: Running GGIR for first time. 
# Vincent van Hees
# Jairo H Migueles
# -------------------------------------------------------------------------


# 1 - load GGIR
library(GGIR)

# 2 - Run GGIR with automated sleep detection (HDCZA algorithm)

GGIR(datadir = "C:/mystudy/mydata",
     outputdir = "D:/myresults",
     # fill the arguments here
     
)

# 3 - Run GGIR with sleeplog
# Pay attention at the ID in part2_summary reports, this needs to match the ID in the sleeplog

GGIR(datadir = "C:/mystudy/mydata",
     outputdir = "D:/myresults",
     # fill the arguments here
     
)


# 3 - try it out yourself!
