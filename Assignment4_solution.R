# -------------------------------------------------------------------------
# GGIR standard training: assignment 4
# Vincent van Hees
# Jairo H Migueles
# -------------------------------------------------------------------------


# 1 - load GGIR
library(GGIR)

# 2 - GGIR part5
GGIR(# assignment 1
     datadir = "C:/GGIRtraining/file/",
     outputdir = "C:/GGIRtraining/assignments/",
     mode = 5, # we assume that the milestone data from GGIR part 1, 2, 3, and 4 are still in output directory
     do.report = c(2, 4, 5), # now we are also interested in part 5 reports
     visualreport = TRUE, # now we can get the visualreport
     # assignment 2
     overwrite = FALSE, # we do not need to overwrite previous output files
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
     # assignment 2, advanced
     qwindow = c(0, 7, 22, 24),
     # assignment 3.1
     HASIB.algo = "vanHees2015",
     HASPT.algo = "HDCZA",
     # assignment 3.2
     idloc = 2,
     loglocation = "C:/GGIRtraining/sleeplog/sleeplog_GGIRtraining.csv",
     colid = 1, 
     coln1 = 2,
     nnights = 7,
     sleeplogidnum = FALSE,
     # assignment 4
     boutdur.mvpa = c(1, 2, 5, 10),
     boutcriter.mvpa = 0.8,
     boutdur.in = c(30, 60),
     boutcriter.in = 0.95,
     boutdur.lig = 10,
     boutcriter.lig = 0.8,
     timewindow = "WW")
