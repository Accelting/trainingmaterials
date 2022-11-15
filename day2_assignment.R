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

# 3 - If you are NOT using the data from this repository then create a sleeplog csv file
#     with the basic sleep log format to be used with the file you just processed.

# 3 -  If you are using the data from this repository then note that the sleep csv file is
#      available here: https://github.com/Accelting/trainingmaterials/tree/main/sleeplog

# 4 - Re-Run GGIR with the sleeplog
# Pay attention at the ID in part2_summary reports, this needs to match the ID in the sleeplog

GGIR(datadir = "C:/mystudy/mydata",
     outputdir = "D:/myresults",
     # fill the arguments here
     
)


# try it out yourself!
