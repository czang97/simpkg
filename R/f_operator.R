#' f operater
#'
#' @param f a function
#'
#' @return a function
#' @export
#'
#' @examples
#' my.log.3 = f_operator(my.log.2)
#' lapply(runif(2,-10,10), my.log.3)
#'
f_operator = function(f){
  force(f)
  function(x){
    if (x > 0){
      f(x)
    }else{
      rlang::catch_cnd(rlang::abort(message = "negative input, NA introduced!", .subclass = "invalid_input", invalid_input = x))
    }
  }
}
