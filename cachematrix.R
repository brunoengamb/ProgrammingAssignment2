## This function creates a normal random quadratic  x,x matrix  
## that matrix is cached to be used in another envorionment.

makeCacheMatrix <- function(x) {# x is the dimention of the matrix
  inv<<- NULL   
  mNCols= x 
  NRows= x 
  myMat<<- matrix(rnorm(x*x),x,x) #set an randon quadratic matrix and cache it.
}


## This function checks if the inverse of the matrix has already been calculated. 
## If it is so, the funcion just call the cached inverse. Otherwise the funciol calculates
## the inverse matrix.
cacheSolve <- function() {
        ## Return a matrix that is the inverse of 'x'
  new_myMat<- myMat
  if(!is.null(inv)) { #cheks if the inverse matrix has already been calculated.
    message("getting cached data.")
    return(inv)
  }
  else{
    inv<<- solve(myMat)  #calculates the inverse of the matrix 
  }                      #if it has not been cached
  return(inv)
}
