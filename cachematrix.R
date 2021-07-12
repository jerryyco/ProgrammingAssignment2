## a serves as an input forthe matrix function
## any matrix that is input to a can be reset
## b is solved converts into null

makeCacheMatrix<-function(a = matrix()) 
{
  b<-NULL
  set<-function(y) 
  {
    a<<-y
    b<<-NULL
  }
  get<-function() a
  setinv<-function(mean) b<<-inv
  getinv<-function() b
  list(set = set, get = get, 
       setinv = setinv, getinv = getinv)
}

## The same concept would apply for the cached data
## Input is then cached to create an inversed matrix
cacheSolve<-function(a,...) 
{
  b<-a$getinv()
  if(!is.null(b)) 
  {
    message("cached data being retrieved from inversed matrix")
    return(b)
  }
  storage<-a$get()
  b<-solve(storage,...)
  a$setinv(b)
  inv
}
## This Returns the matrix that is the inverse of the matrix stored in a
