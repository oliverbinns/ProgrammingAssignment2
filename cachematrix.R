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

}
