## x is set as an input for the matrix
## inv is solved converts into null

makeCacheMatrix <- function(x = matrix()) 
  {
  inv <- NULL
  set <- function(y) 
  {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(mean) inv <<- solve(X)
  getinverse <- function() inv
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  }

## Same concept applies for the cached data

cacheSolve <- function(x, ...) 
  {
  inv <- x$getinverse()
  if(!is.null(inv)) 
    {
    message("getting cached data for inversed matrix")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
  }

## Return a matrix that is the inverse of 'x'
