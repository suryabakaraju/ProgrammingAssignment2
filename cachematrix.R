## Put comments here that give an overall description of what your
## functions do

## these two functions cache the inverse of a matrix

## Write a short comment describing this function
## This function creates a  special matrix by setting and getting the matrix
## setting and getting the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setmat <- function(y) {
    x <<- y
    m <<- NULL
  }
  getmat <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(setmat = setmat, getmat = getmat,
       setinverse = setinverse,getinverse = getinverse)
  
}


## Write a short comment describing this function
## Takes the inpur from the above function and calculates the inverse
## If inverse is already calculated then skips the computation and returns the cached value.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getmat()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
}
