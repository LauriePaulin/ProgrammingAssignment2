## This functions are to solve and cache the inverse of a matrix.

## Cache the solved matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
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
  solve(x)  
}
