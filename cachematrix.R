##
##  This is based on a forked copy of the R Programminc course repo
##
##  makeCacheMatrix creates a cached matrix, which can be used multiple times
## 
##  cacheSolve solves the inverse matrix
## 



## CAN'T REMEMBER FROM LAST TIME ANYMORE, CHECK WHAT WORKS OR NOT!!!

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  ##initialize
  inverse<-NULL
  
  set <- function (y){
        x<<- y
        inverse <<- NULL
      }
  
  
  get <- function () x
  setInverse <- function (solve) inverse<<-solve
  getInverse <- function () inverse
  list(set = set, get=get, setInverse = setInverse, getInverse=getInverse)
  
  
}


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  
  m<- x$getInverse()
  ##check if inverse has been calculated before
  ##  If yes -> use chached data
  if(!is.null(m)){
    message("Using chaced data instead")
    return(m)
  }
  
  ##solve the inverse of the original matrix
  originalMatrix <- x$get()
  m <- solve(originalMatrix, ...)
  
  ## set the cached matrix
  x$setInverse(m)

  ##return the inversed matrix
  m
  
}