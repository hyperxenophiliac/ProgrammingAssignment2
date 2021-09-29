## Put comments here that give an overall description of what your
## functions do

## Function 1. Sets value of matrix, gets value of matrix, 
## sets value of the inverse, gets the value of the inverse,
## lists the output. 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() {x}
        setInverse <- function(inverse) {inv <<- inverse}
        getInverse <- function() {inv}
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}


## Function 2. 

cacheSolve <- function(x, ...) {
       inv <- x$getInverse()
       if(!is.null(inv)) {
               message("getting cached data")
               return(inv)
       }
       mat <- x$get()
       inv <- solve(mat, ...)
       x$setInverse(inv)
}
