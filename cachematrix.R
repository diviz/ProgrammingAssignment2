## This code calculates and caches the inverse of a matrix.
## As matrix inversion is a costly computation, caching increases performance
## as it stores the inversed matrix in cache instad of computing inverse on demand.
##
## Assumptions: matrix provided is always invertible

## The following function creates a matrix and saves the inverse of the matrix in the cache.
makeCacheMatrix <- function(x = matrix()) {

   	#initialize inverse of a matrix
   	matrixinverse <- NULL
	
	setMatrix <- function(y) {
		x <<- y
		matrixinverse <<- NULL

	}	

	getMatrix <- function() {
		x
	}

	setMatrixInverse <- function(minverse) {
		matrixinverse <<- minverse
	}

	getMatrixInverse <- function() {
		matrixinverse
	}

	list(set = setMatrix, get = getMatrix, setInverse = setMatrixInverse, getInverse = getMatrixInverse)

}


## This function computes the inverse of the matrix that is returned by makeCacheMatrix function. 
## If the inverse has already been calculated, then then makeCacheMatrix is used to retrieve 
## the inverse of the matrix from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	matrixinverse <- x$getInverse()

        if(!is.null(matrixinverse)) {
                print("Getting cached inverse of a matrix")
                return(matrixinverse)
        }

        matrix <- x$get()
        ## inverse of matrix
        minverse <- solve(matrix, ...)
        x$setInverse(minverse)
        minverse

}
