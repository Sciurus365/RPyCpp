library(reticulate)
bioread <- import("bioread") # import the module
acqfile <-  bioread$read_file('physio-5.0.1.acq') # use read_file function from the module to read in the file
acqfile # see the info
# AcqKnowledge file (rev 132): 4 channels, 2000.0 samples/sec

acqfile$channels # see the channels
# [[1]]
# Channel EDA filtered, differentiated: 123787 samples, 2000.0 samples/sec, loaded: True
# 
# [[2]]
# Channel EKG - ERS100C: 61893 samples, 1000.0 samples/sec, loaded: True
# 
# [[3]]
# Channel RESP - RSP100C: 241 samples, 3.90625 samples/sec, loaded: True
# 
# [[4]]
# Channel EDA - GSR100C: 123787 samples, 2000.0 samples/sec, loaded: True

acqdata1 <- acqfile$channels[[1]]$data # retrive the data from the first channel

str(acqdata1)
# num [1:123787(1d)] -101 -101 -101 -101 -101 ...
# acqdata1, retrived from a Python object, is now an R vector
# so you can use R to handle the remaining things
# e.g.:

mean(acqdata1)
# [1] -110.7604