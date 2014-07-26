## Put comments here that give an overall description of what your
## functions do

# Create a matrix wrapper that allows the inverse of the 
# matrix to be stored in the global environment
makeCacheMatrix <- function(x = matrix()) {
  
  # verify input is correct type
  if(!is.matrix(x)){
    stop("Argument needs to be a matrix")
  }
  
  inverse <- NULL # set empty spot for inverse
  
  # function to set matrix and inverse in global environment
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  #function to get matrix and inverse
  get <- function() x
  #solve matrix and store solution in global environment
  setinverse <- function(solve) inverse <<- soln
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


# calculates the inverse of the matrix object
cacheSolve <- function(x, ...) {
  
  # grab getinverse attribute from matrix object
  result <- x$getinverse()
  
  # if the inverse has been calculated, get it
  if(!is.null(result)) {
    message("getting cached data")
    return(result)
  }else{ #otherwise, set the attributes of the matrix object (including the inverse)
    input <- x$get()
    result <- solve(input, ...)
    x$setinverse(result)
  }
  
  #return matrix inverse 
  result
}
