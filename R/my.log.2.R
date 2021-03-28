#' log function
#'
#' @param x  a number
#'
#' @return log x
#' @export
#'
#' @examples
#' my.log.2(1)
#'
my.log.2 = function(x){
  if(x <0){
    rlang::abort(message = "negative input, NA introduced!", .subclass = "get_val2_error")
  }else{
    res <- sqrt(x)
    cat("Calculating the log of ", x, "\n", sep = "")
    res
  }
}
