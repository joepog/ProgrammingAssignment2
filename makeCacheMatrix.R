## Two functions that are able to cache the inverse of a matrix
## then cache the inverse of the created matrix

makeCacheMatrix <- function(x = matrix()){
        inv <- NULL
        set <- function (y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(solveMatrix) inv <<- solveMatrix
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, 
             getInverse = getInverse)       
} 

