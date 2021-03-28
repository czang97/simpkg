#' Square root function
#'
#' @param x a number
#'
#' @return square root x
#' @export
#'
#' @examples
#' my.sqrt.2(4)
#'
my.sqrt.2 = function(x){
  if(x <0){
    rlang::abort(message = "negative input, NA introduced!", .subclass = "get_val1_error")
  }else{
    res <- sqrt(x)
    cat("Calculating the square root of ", x, "\n", sep = "")
    res
  }
}
