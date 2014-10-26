## Put comments here that give an overall description of what your
## functions do.
## The goal of the following two functions is to calculate the inverse of a matrix
## if the inverse of the matrix has been already cached, the inverse of the matrix
## will be returned immediately instead of being computed again.


## Write a short comment describing this function
## The following function will create a special matrix consisting of a list made of
##a functions to: (set & get value of matrix and set & get inverse of matrix)

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL

#This will set the value of the matrix
  set <- functions(y)
{
## Use of <<- operatator to assign y to x not in the same environment
  x <<- y
  m <<- NULL
}

## This will get the value of the matrix
  get <- function() x

## This will set the inverse of the matrix
  setinverse <- function(inverse) m <<- inverse

## This will get the inverse of the matrix
  getinverse <- function() m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## The following fucntion will compute the inverse of the special matrix created in
## makeCacheMatrix function. First, the cacheSolve fucntion checks if the inverse has already
##been calculate, if so it picks the inverse from the cache instead of
##computing it again. If not the function computes the inverse of the dataset and
## sets the inverse matrix in the cache using setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m) {
        message("getting cached data")
        return(m)
        }
        dataset <- x$get()
        m <- solve(dataset, ...)
        x$setinverse(m)
        m
}
