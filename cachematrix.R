# Gesmundo_ProgrammingAssignment
## Requirements for R programming

## the variable for my matrix is r, while spiderman as my null

makeCacheMatrix <- function(x = matrix()) {
spiderman <- NULL
set <- function(g) {
r <<- g
spiderman <<- NULL
        
        
}
        
get <- function() x
setcalculation <- function(calculation) spiderman <<- calculation
getcalculation <- function() spiderman
list(set = set,get = get,setcalculation = setcalculation,getcalculation = getcalculation)
}





cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
spiderman <- x$getcalculation()
if (!is.null(spiderman)) {
message("getting cached data")
return(spiderman)}
mat <- x$get()
spiderman <- solve(mat, ...)
x$setcalculation(spiderman)
spiderman}
