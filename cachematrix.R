## The aim of this phase is to experience developing functions that either 
## cache or restore the inverse of a matrix.

## makeCacheMatrix: The above function generates a matrix object in order to store the inverse given data.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
        
        
}
        
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}



## cacheSolve: is a function that authenticates the matrix’ inverse which was restored by the makeCacheMatrix.
## In the occurrence of the inverse’s computation, the cacheSolve function will attempt to recover the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv}
