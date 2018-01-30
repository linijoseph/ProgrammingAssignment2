## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function( m = matrix() ) {
 
  ## Initialize inverse 
  i <- NULL
 
  ## set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
 
  ## get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
 
  ## set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
 
  ## get the inverse of the matrix
  getInverse <- function() {
    
    i
  }
 
  ## Return a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
 

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       
## Return a matrix ie the inverse of 'x'
  m <- x$getInverse()
   
  ## Just return inverse if already set
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
   
  ## Get matrix from our object
  data <- x$get()
   
  ## Calculate inverse using matrix multiplication
  m <- solve(data) %*% data
   
  ## Set inverse to the object
  x$setInverse(m)
   
  ## Return the matrix
  m
}
