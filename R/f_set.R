#' @title
#' sets factor's level order
#' @description
#' sets levels to the order in which they appear in the data
#' @usage
#' f_set(x)
#' @param x
#' a factor.
#' @return
#' Returns a new verision of the input factor in
#' the order in which they appear in the data
#' An error is raised if # unique values != length
#' @examples
#' f_set(factor(c("B", "A", "D"))) # Levels: B A D
#' @export


f_set <- function(x) {
  if (!is.factor(x)) {
    stop("This is not a factor!")
  }

  # return a factor with reset levels
  return(factor(x, as.character(unique(x))))
}
