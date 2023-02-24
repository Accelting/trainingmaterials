# -------------------------------------------------------------------------
# GGIR standard training: assignment 3
# Vincent van Hees
# Jairo H Migueles
# -------------------------------------------------------------------------


# 1 - load GGIR
library(GGIR)

# 2 - GGIR function call

GGIR(# assignment 1
     datadir = "C:/GGIRtraining/file/",
     outputdir = "C:/GGIRtraining/assignments/",
     mode = 3:4, # we assume that the milestone data from GGIR part 1 and 2 are still in output directory
     do.report = c(2, 4), # now we are also interested in part 4 reports
     visualreport = FALSE,
     # assignment 2
     overwrite = FALSE, # now we do not want to overwrite previous output
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
     HASPT.algo = "HDCZA"
     )

# 2 - copy results/part4_nightsummary_clean.csv
# This can also be done outside R (manually copy/paste file)
file.copy(from = "C:/GGIRtraining/assignments/output_file/results/part4_nightsummary_sleep_cleaned.csv",
          to = "C:/GGIRtraining/assignments/part4_nightsummary_sleep_cleaned.csv")

# 3 - rerun GGIR using sleeplog
GGIR(# assignment 1
     datadir = "C:/GGIRtraining/file/",
     outputdir = "C:/GGIRtraining/assignments/",
     mode = 2:4, # we need to re-run part 2 to get the ID correctly identified
     do.report = c(2, 4), # now we are also interested in part 4 reports
     visualreport = FALSE,
     # assignment 2
     overwrite = TRUE, # this will overwrite the HDCZA detection in assignment 3.1
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
     idloc = 6,
     loglocation = "C:/GGIRtraining/sleeplog/sleeplog_GGIRtraining.csv",
     colid = 1, 
     coln1 = 2,
     nnights = 7,
     sleeplogidnum = FALSE)
