#include <Rcpp.h>
using namespace Rcpp;

// 在函数开始之前的部分（#include <Rcpp.h>，using namespace Rcpp;，// [[Rcpp::export]]）
// 是C++和Rcpp需要的一些头文件。
// 如果在RStudio中创建新C++文件，RStudio会自动生成这些头文件。
  
// [[Rcpp::export]]
NumericVector add_one(int time) {
  // 这个函数会计算一个向量，其中第一个元素是0，之后每个元素相对上一个元素增加1
  
  // 注意：C++中的注释开头是“//”
  // C++中，所有变量的类型和函数返回值的类型都需要主动声明 （例如NumericVector）
  // 每一句代码要以分号结束
  // 而且数组序号从0开始
  
  // NumericVector是Rcpp中的一种数据类型。
  // 使用这种类型，可以保证函数返回值可以被转化成R向量。
  NumericVector x(time+1);
  x(0) = 0;
  for(int i = 1; i <= time; i++){
    x(i) = x(i-1) + 1;
  }
  return x;
}

