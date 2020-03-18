## Function to compute inverse of the matrix from makeCacheMatrix
cacheSolve <- function(x, ...){
        inv <- x$getInverse() 
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
}