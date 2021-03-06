## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    I <- NULL
    set <- function(y){
        x <<- y
        I <<- NULL
    }
    get <- function() x
    setInv <- function(inv) I <<- inv
    getInv <- function() I
    list(set = set, get=get, setInv = setInv, getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    I <- x$getInv()
    if(!is.null(I)){
        message("geting cached data")
        return(I)
    }
    data <- x$get()
    I <- solve(data, ...)
    x$setInv(I)
    I
        ## Return a matrix that is the inverse of 'x'
}
