library(Rcpp)
sourceCpp("add_one_en.cpp") # source the C++ function

t1<-Sys.time()
add_one(100000000) # run the function
t2<-Sys.time()

t2-t1 # calculate running time
# Time difference of 1.545115 secs

# R function for the same purpose
add_one_slow <- function(x){
  y <- vector("integer", x+1)
  y[1] = 0
  for(i in 1:x+1){
    y[i] <- y[i-1] + 1
  }
  return(y)
}
t1<-Sys.time()
add_one_slow(100000000) # run the R function
t2<-Sys.time()
t2-t1 # calculate running time
# Time difference of 18.90944 secs