## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'


}
