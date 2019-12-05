## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # Initializing
  inv <- NULL
        
  # make Methods
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
        
  # return list
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
   # check exist of inv
  if(!is.null(inv)) {
    message("getting cached result")
    return(inv)
  } else {
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  return(inv)
  }
}
