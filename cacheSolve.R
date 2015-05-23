## This function computes the inverse of the "matrix" returned by makeCacheMatrix(). 
## If the inverse has already been calculated and the matrix has not changed, 
## it'll retrieves the inverse from the cache directly

cacheSolve <- function(x, ...) {
        
        ## get the inverse of the matrix
        inv <- x$getInvMat()
        
        
        ## if the inverse has already been calculated
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        
        ## else calculate the inverse
        data <- x$get()
        inv <- solve(data, ...)
        
        ## sets the value of the inverse in the cache via the setInvMat function.
        x$setInvMat(inv)
        
        ##return the inverse mtrix
        inv
}

