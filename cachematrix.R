## Put comments here that give an overall description of what your
## functions do: 
## The functions cache inverse of an invertible matrix by first creating a
## matrix object to contain and cache the inverse, and by subsequently pulling
## out that cached inverse, or computing it.

## Write a short comment describing this function: 
##This function creates a matrix m 
##which can cache the inverse of matrix x.

makeCacheMatrix <- function(x = matrix()) {
             m<-matrix(0,0,0)            
             set<-function(y) {
             x<<-y
             m<<-NULL
}
get<-function()x
setmatrix<-function(solve)  m<<-solve
getmatrix<-function()m 
list (set=set, get=get, setmatrix=setmatrix, 
getmatrix=getmatrix)
} 


## Write a short comment describing this function: 
## This function computes inverse of matrix x, 
##or pulls an already computed inverse of x from cache. 

cacheSolve <- function(x, ...) {
           m<-x$getmatrix()
           if(is.null(m)) {
           message("getting cached data")
           return(m)
   }
data<-x$get()
m<-solve(data,...)
x$setmatrix(m)
m
}
        
