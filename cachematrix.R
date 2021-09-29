## Put comments here that give an overall description of what your
## functions do

## Function 1. Sets value of matrix, gets value of matrix, 
## sets value of the inverse, gets the value of the inverse,
## lists the output. 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL                ##initializes inverse as NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() {x}       ##function to get inverse of matrix
        setInverse <- function(inverse) {inv <<- inverse}
        getInverse <- function() {inv}
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}


## Function 2. 

cacheSolve <- function(x, ...) {   ##gets cache data
       inv <- x$getInverse()
       if(!is.null(inv)) {         ##Tests for is inverse NULL?
               message("getting cached data")
               return(inv)         ##returns value of inverse
       }
       mat <- x$get()
       inv <- solve(mat, ...)      ##calculates inverse value
       x$setInverse(inv)
}
