# -------------------------------------------------------------------------
# GGIR standard training: assignment 2
# Vincent van Hees
# Jairo H Migueles
# -------------------------------------------------------------------------


# 1 - load GGIR
library(GGIR)

# 2 - GGIR function call

GGIR(datadir = "C:/GGIRtraining/file/",
     outputdir = "C:/GGIRtraining/assignments/",
     mode = 1:2,
     desiredtz = "Europe/Madrid",
     do.enmo = TRUE,   # optional (default)
     do.anglez = TRUE, # optional (default)
     strategy = 1,
     hrs.del.start = 1, hrs.del.end = 1,
     ilevels = c(0, 50, 100, 150, 200, Inf),
     qlevels = c((1440 - 60*8) / 1440,
                 (1440 - 120) / 1440,
                 (1440 - 60) / 1440,
                 (1440 - 30) / 1440,
                 (1440 - 15) / 1440,
                 (1440 - 5) / 1440),
     iglevels = 1,
     mvpathreshold = c(100, 140),
     # advanced
     qwindow = c(0, 7, 22, 24))

