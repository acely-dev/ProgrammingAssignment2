## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# I take the same structure of vector sample an build 4 funtions
# get/set methods to store and return the matrix
# getinverse/setinverse to save and return the inverse matrix
# Solve function it's used to calculate inverse matrix
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
# I take the same structure of vector sample, and call the getInverse method
# to get the inverse matrix, and if the value is null, m values is cached using
# setInverse

# Solve function it's used to calculate inverse matrix
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
