
  ## Theese functions creates a matrix and also caches the matrix for 
	## Creating a matrix
	 makeCacheMatrix <- function(x = matrix()) {
	    i <- NULL
	    set <- function(y) {
	         x <<- y
	        i<<- NULL
	    }
	    get <- function() x
	     setinverse <- function(inverse) i <<- inverse
	     getinverse <- function() i
	     list(set = set, get = get,
	         setinverse = setinverse,
	          getinverse = getinverse)
	 }
	
	## Caching the inverse of Matrix, assuming the matrix is invertible 
	
	cacheSolve <- function(x, ...) {
	       i <- x$getinverse()
	        if(!is.null(i)) {
	                message("getting cached data")
	                return(i)
	        }
	        data <- x$get()
	        i <- solve(data, ...)
	        x$setinverse(i)
	        i
	}
	        ## Return a matrix that is the inverse of 'x'
	

