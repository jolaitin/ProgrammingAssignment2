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
  inv<-NULL
  
  set <- function (y){
        x<<- y
        inv <<- NULL
      }
  get <- function () x
  setInverse <- function (inv_) inv<<-inv_
  getInverse <- function () inv
  list(set = set, get=get, setInverse = setInverse, getInverse=getInverse)
  
  
}


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  
  inverse<- x$getInverse()
  ##check if inverse has been calculated before
  ##  If yes -> use chached data
  if(!is.null(inverse)){
    message("Using chaced data instead")
    return(m)
  }
  
  ##solve the inverse of the original matrix
  originalMatrix <- inverse$getInverse()
  m <- solve(originalMatrix, ...)
  
  ## set the cached matrix
  inverse$setMatrix(m)

  ##return the inversed matrix
  m
  
}