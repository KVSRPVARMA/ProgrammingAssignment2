## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function is used to create cache matrix which stores it's inverser

makeCacheMatrix <- function(p = matrix()) {
  i <- NULL
  set <- function(k) {
    p <<- k
    n <<- NULL
  }
  get <- function() p
  setInverse <- function(inverse) 
  n <<- inverse
  getInverse <- function() n
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
## This fuction computes the inverse of matrix which is created above,
##  a message will be displayed "getting cached data"

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}

