

## makeCacheMatrix create an object with method:
## - getter/setter for the matrix
## - getter/setter for the inverse matrix(using the solve func)

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NUL
  }
  
  get <- function() {
    x
  }
  
  setInv <- function(solve) {
    i <<- solve
  }
  
  getInv <- function() {
    i
  }
  
  list(set = set, 
       get = get, 
       setInv = setInv, 
       getInv = getInv)
}


## cacheSolve
## - check the inverse matrix of x is already or not
##   if so get the value from cache
## - otherwise, calculates the mean of the data 

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getInv()
    
    if (!is.null(i)) {
      message("getting cached data")
      return(m)
    }
    
    data <- x$get()
    
    i <- solve(data, ...)
    x$setInv(i)
    i
}
