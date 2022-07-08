## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#Hello this is my first commit - see if you can spot this line :) 


#this function generates a special matrix and caches its inverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL  #inverse property

#this method sets the matrix
set <- function( matrix) {
  
  mat <<- matrix
  inv <<- Null
  
}


# this method gets the matrix
get <- function(){
  mat
}

# this mathod sets the inverse of the matrix
setInverse <- function(inverse){
  inv <<- inverse
}
# this method gets the inverse of the matrix
getInverse <-function(){
  inv
}

list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

#this function can compute the inverse of the matrix or get the inverse by checking the cache
cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
  mat <- x$getInverse()
  
  if(!is.null(mat)){
    message("inverse found in cache")
    return(mat)
  }
  #fetch matrix
  data <- x$get()
  
  #computing inverse of the matrix
  mat <- solve(data) %% data
  
  #set inverse   
  x$setInverse(mat)
  
  #returns the matrix 
  mat
  
}
