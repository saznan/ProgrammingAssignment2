## I took the makeVector function example provided and changed it
## to caching a matrix's inverse. 

## This function caches the inverse of a matrix. I changed
## the variable 'm' to 'invr' and changed all 'mean' values to 
## 'inverse'.

makeCacheMatrix <- function(x = matrix()) {
    invr <- NULL
    set <- function(y) {
      x <<- y
      invr <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) invr <<- inverse
    getinverse <- function() invr
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }


## This function, similar to the example provided, returns the
## inverse of the special matrix. I changed the mean function
## to solve() to get the inverse. And all 'mean' values I changed
## to 'inverse'. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      invr <- x$getinverse()
      if(!is.null(invr)) {
      message("getting cached data")
      return(invr)
  }
  data <- x$get()
  invr <- solve(data, ...)
  x$setinverse(invr)
  invr
  
}
