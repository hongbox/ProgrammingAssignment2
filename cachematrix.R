## Put comments here that give an overall description of what your
## functions do

## create a matrix to catch its Inverse
## I will take the templete of the example in the class 

## This function will do 4 things
## 1. set the value of the matrix
## 2. get the value of the marix
## 3. set the value of eversed matrix
## 4. get the value of Inversed matrix

makeCacheMatrix <- function(x = matrix()) {
  rmx <- NULL
  set <- function(y) {
    x <<- y
    rmx <<- NULL
  }
  get <- function() x
  setInverse <- function(rev_x) rmx <<- rev_x
  getInverse <- function() rmx

  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Again, I will adopt the templete from the course 
## The function will create a Inverse matrix of the "special" matrix created using
## above makeCacheMatrix function. However it will first check catch whether
## there is already a Inverse matrix

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  rmx <- x$getInverse()
  if(!is.null(rmx)) {
    message("getting cached data")
    return(rmx)
  }
  data <- x$get()
  rmx <- solve(data, ...)
  x$setInverse(rmx)
  rmx
}
