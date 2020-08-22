library(Rcpp)
sourceCpp("add_one_zh.cpp") #将Rcpp函数导入R中

t1<-Sys.time()
add_one(100000000) # 运行Rcpp函数
t2<-Sys.time()
t2-t1 # 计算运行时间
# Time difference of 1.545115 secs

# 相同功能的R函数
add_one_slow <- function(x){
  y <- vector("integer", x+1)
  y[1] = 0
  for(i in 1:x+1){
    y[i] <- y[i-1] + 1
  }
  return(y)
}
t1<-Sys.time()
add_one_slow(100000000) # 运行Rcpp函数
t2<-Sys.time()
t2-t1 # 计算运行时间
# Time difference of 18.90944 secs