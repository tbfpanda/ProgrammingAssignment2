## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invmatrix <- NULL #setting initial value of inverse matrix to NULL
    setmatrix <- function(y){
        
        x <<- y # making function to set the value of matrix
        invmatrix <<- NULL
    }
    getmatrix <- function() x #function to get the matrix
    setinverse <- function(value) invmatrix<<-value #function to set inverse of matrix
    getinverse <- function() invmatrix #function to get inverse of matrix
    list(getmatrix=getmatrix, setmatrix=setmatrix, getinverse=getinverse,setinverse=setinverse)
    #returns list of all the functions

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
    invmatrix <- x$getinverse()   # checking if inverse matrix is cached
    if (!is.null(invmatrix)){
        return(invmatrix)
    }
    else {
        matrix <- x$getmatrix()
        invmatrix <<- solve(matrix)
        x$setinverse(invmatrix)  #evaluated in case inverse matrix is not cached
        return(invmatrix)
    }
       
}
