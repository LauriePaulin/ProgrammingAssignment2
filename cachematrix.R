## This functions are to solve and cache the inverse of a matrix.

## Cache the solved matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ## set/get values for matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## set/get solved values for matrix
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Accept a matrix and return its inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  ## If cached already, return the cache
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  ## Not cached, therefore solve and cache
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
