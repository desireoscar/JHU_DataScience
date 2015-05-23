## This function creates a special "matrix" object that can cache its inverse.
## The matrix "x" is a square invertible matrix

## return: a list containing functions to
##              1. set the matrix
##              2. get the matrix
##              3. set the inverse
##              4. get the inverse
##         this list is used as the input to cacheSolve()

makeCacheMatrix <- function(x = matrix()) {
        
        ## initialize an empty matrix        
        inv <- NULL
                                
                set <- function(y) {
                        
                        ## assign the value of the matrix to an object in an environment 
                        ## different from the current environment.
                        
                        x <<- y
                        inv <<- NULL
                }
                
                get <- function() x
                
                setInvMat <- function(solve) inv <<- solve
                
                getInvMat <- function() inv
                
                list(set = set, get = get,
                     setInvMat = setInvMat,
                     getInvMat = getInvMat)
}


