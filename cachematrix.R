## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The following function computes the inverse of a special 'matrix' returned by makeCachematrix. 
##If the inverse has already been calculated(and the matrix has not changed), 
##the cacheSolve should retrieve the inverse from cache.

makeCacheMatrix <- function(x = matrix()) {
        b <- NULL
        set <- function(y) {
                x <<- y
                b <<- NULL
                }
        get  <- function() x
        setinverse <- function(inverse) b <<- inverse
        getinverse <- function() b
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        b <- x$getinverse()
        if(!is.null(b)) {
                message("getting cached data")
                return(b)
                }
        data <- x$get()
        b <- solve(data, ...)
        x$setinverse(b)
        b
       
        ## Return a matrix that is the inverse of 'x'
}
