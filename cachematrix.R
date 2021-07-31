## These functions store the inverse of a matrix in cache such that this inverse only has to be calculated once. 



## Similar to the example code for caching the mean of a vector, this function makeCacheMatrix
## calculates the inverse of a square invertible matrix and stores the inverse of it in cache.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <- y
                m <- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## The function cacheSolve gets the inverse of the square invertible matrix x from cache if it has been calculated before.
## If it has not been calculated before, it calculates the inverse and stores it in cache.
cacheSolve <- function(x, ...) {
        m <- x$getinverse()ma
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
