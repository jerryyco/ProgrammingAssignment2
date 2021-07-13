## Submission for Programming Assignment 2: Lexical Scoping in Coursera (R Programming)
## having the setmean as an example provided to create this function, 'a' serves as an input forthe matrix function
## any matrix that is input to 'a' can be reset
## 'b' is solved converts into null
## any function that can create a matrix could be used as long as it is represented in a variable

## I have used rstudio to create the function

makeCacheMatrix<-function(a = matrix()) #any variable could be represented as the input matrix
  
{
  
  
  #for my script, 'a' would be the input matrix
  #the variable 'b' would be set to null

  b<-NULL
  set<-function(y) 
  a<<-y
  b<<-NULL
    
}


get<-function() a
setinv<-function(inverse) b<<-inv
getinv<-function() b

#by typing get, matrix represented in 'a' would be displayed
#setinv would have the ability to create the matrix 'a' into an inverse matrix which is 'b'
#getinv would display the now inversed matrix represented in 'b'
#these functions could save the matrix and inversed matrix into the rstudio environment


list(set = set, get = get, 
     setinv = setinv, getinv = getinv)

#these are the lists available to set and get the matrix and its inverse



## The next step would be to create the cachesolve function
## The same concept would apply for the cached data
## Input is then cached to create an inversed matrix based from the first function


cacheSolve<-function(a,...) 
  
{
  
  b<-a$getinv()
  if(!is.null(b))
    
    #this code shows if the function of inverse is null
    
  {
    
    message("cached data being retrieved from inversed matrix")
    return(b)
    
    #this statement would have the ability to return the input matrix
    
  }
  
  matrix<-a$get()
  b<-solve(matrix,...)
  a$setinv(b)
  b
  
}


## This Returns the matrix that is the inverse of the matrix stored in 'a'
## End of Programming Assingment 2: Lexical Scoping
