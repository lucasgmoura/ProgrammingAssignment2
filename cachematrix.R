## Put comments here that give an overall description of what your
## functions do
## Our aim is to write a pair of functions that cache the inverse of a matrix. 
## The name of the functions is "makeCacheMatrix" and "cacheSolve".

## Write a short comment describing this function
## The first function is 'makeCacheMatrix', which creates a special 'matrix' object that can cache its inverse
## The second function is 'cachSolve', which computes the inverse of the special 'matrix' returned by the function above.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<-y
                m <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse)m <<- inverse
        getInverse <- function()m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Write a short comment describing this function
## cacheSolve is a function which computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        mat <- x$get()
        m <- solve(mat,...)
        s$setInverse(m)
        m
}


