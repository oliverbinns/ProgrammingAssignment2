# Submission for Coursera Course rprog-008 Week 2 Programming Assignment
# Oliver Binns

# This file contains two functions which can calculate and cache the inverse of a matrix


# Caching function that can hold a matrix and its inverse through get/set/getinverse/setinvserse methods)
# Called by the user the set a matrix and the cacheSolve function (below) for other methods
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


# Function that solves (find the inverse) of a matrix
# Calls the makeCacheMatrix function (above)
cacheSolve <- function(x, ...) {
    #Call the caching function to check if the inverse has already been calcuated
    m <- x$getinverse()
    if(!is.null(m)) {
        # x$getinverse() is not null (i.e. the inverse has already been calculated)
        # Return the value from the cache
        message("getting cached data")
        return(m)
    }
    # The inverse has not previously been calculated, so solve it and save it to the cache
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    return(m)
}
