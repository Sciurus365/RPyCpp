library(reticulate)
bioread <- import("bioread") # 导入模块
acqfile <-  bioread$read_file('physio-5.0.1.acq') # 使用bioread中的read_file函数读取文件
acqfile # 查看acq文件对象信息
# AcqKnowledge file (rev 132): 4 channels, 2000.0 samples/sec

acqfile$channels # 查看acq文件中的通道
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

acqdata1 <- acqfile$channels[[1]]$data # 提取第一个通道中的数据

str(acqdata1)
# num [1:123787(1d)] -101 -101 -101 -101 -101 ...
# 可以看到，从Python对象中提取的acqdata1已经是一个R向量了。
# 因此，之后都可以直接使用R语言对其进行分析
# 例如：

mean(acqdata1)
# [1] -110.7604