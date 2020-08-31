#include <Rcpp.h>
using namespace Rcpp;

// There are several headers in C++(#include <Rcpp.h>，using namespace Rcpp;，// [[Rcpp::export]])
// RStudio will help you generate those!
  
// [[Rcpp::export]]
NumericVector add_one(int time) {
  // calculate a vector. the first element is 0,
  // and every element afterwards is equal to the previous element plus one
  
  // comments in C++ start with "//"
  // you need to explicitly state the type of variables in C++ (e.g., NumericVector）
  // each sentence ends with ";"
  // and vector index starts with 0
  
  // NumericVector is a type in Rcpp
  // Using it，the returned value can be converted to an R vector
  NumericVector x(time+1);
  x(0) = 0;
  for(int i = 1; i <= time; i++){
    x(i) = x(i-1) + 1;
  }
  return x;
}

