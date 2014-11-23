## Put comments here that give an overall description of what your
## functions do

## Creates a special matrix object that is able to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    
    ## Initialize inverse
    i <- NULL
    
    ## Set matrix
    set <- function( matrix ){
        m <<- matrix
        i <<- NULL
    }
    
    ## Set the "get" of the matrix
    get <- function() {
        ## Return matrix
        m
    }
    
    ## Set inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
    
    ## Get inverse of the matrix
    getInverse <- function() {
        ## Return inverse property
        i
    }
    
    ## Return list of methods
    list(set = set, get = get)
        setInverse = setInverse
        getInverse = getInverse
    
}


## Calculate the inverse of the matrix returned by "makeCachematrix"

cacheSolve <- function(x, ...) {
    
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        ## Return inverse if already set
        if( !is.null(m)) {
            message("getting cached data")
            return(m)
        }
        
        ## Get matrix
        data <- x$get()
        
        ## Calculate inverse
        m <- solve(data) %*% data
        
        ## Set inverse to the object
        x$setInverse(m)
        
        ## Return matrix
        m
        
}
