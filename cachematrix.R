## x serves as an input forthe matrix function
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
  setinv <- function(mean) inv <<- inverse(x)
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  }

## Same concept would apply for the cached data
cacheSolve <- function(x, ...) 
  {
  inv <- x$getinv()
  if(!is.null(inv)) 
    {
    message("getting cached data for inversed matrix")
    return(inv)
  }
  storage <- x$get()
  inv <- solve(storage, ...)
  x$setinv(inv)
  inv
  }
## Return a matrix that is the inverse of the matrix stored in x
