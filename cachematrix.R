## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I simply set the input x as a matrix
## and the set the solved value "s" as a null
## then I changed every reference to "mean" to "solve"

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
s<-NULL
set<-function(y){
x<<-y
s<<-null

}
get <-function()x
setsolve <-function(solve) s<<-solve
getsolve <-function()s
list(set= set, get = get,
      setsolve =setsolve
      getsolve =getsolve)
}


## Write a short comment describing this function
## Same here, changed "mean" to "solve" and "m" to "s"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <-x$getsolve()
        if(!is.null(s))){
        message("getting inversed matrix")
        return(s)

}
data <-x$get()
s<-solve(data, ...)
x$seetsolve(s)
s
}
