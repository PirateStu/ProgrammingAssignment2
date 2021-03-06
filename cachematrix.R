## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                  x <<- y
                  m <<- NULL
            }
            get <- function() x
            setminv <- function(mean) m<<- mean
            getinv <- function() m
            list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getmean()
      if(!is.null(m)) {
            message("getting cahced data")
            return(m)
      }
      data <- x$get()
      m <- mean(data, ...)
      x$setmean(m)
      m
}
