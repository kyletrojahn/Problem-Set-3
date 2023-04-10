#' AnalysisFunction Function
#' 
#' This function takes a vector of numbers and adds random noise to each entry
#' taken from a uniform distribution (-1, 1) if training is set to True. If set
#' to False, it returns the same vector.
#' 
#' @param x vector of numbers
#' @param training boolean value. If T, random noise is added. If F, 
#' no noise is added, vector is returned.
#' @returns vector of numbers
#' @examples 
#' AnalysisFunction(x, T)
#' AnalysisFunction(x, F)


AnalysisFunction <- function(x, training)
{
  if(training == T)
  {
    for(i in 1:length(x))
    {
      x[i] <- x[i] + runif(1, min = -1, max = 1)
    }
    return(x)
  }
  
  else if(training == F)
  {
    return(x)
  }
}
