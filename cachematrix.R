> ## Put comments here that give an overall description of what your
> ## functions do
> 
> ## A matrix that can have an inverse, it suports set and get matrix and also set and get the inverse
> 
> makeCacheMatrix <- function(x = matrix()) {
+     inv <- NULL
+     set <- function(y) {
+         x <<- y
+         inv <<- NULL
+     }
+     get <- function() x
+     setinv <- function(invers) inv <<- invers
+     getinv <- function() inv
+     list(set = set, get = get, setinv = setinv, getinv = getinv)
+     
+ }
> 
> 
> ## Returns the inverse
> 
> cacheSolve <- function(x, ...) {
+     inv <- x$getinv()
+     if(!is.null(inv)) {
+         message("getting cached data")
+         return(inv)
+     }
+     data <- x$get()
+     inv <- solve(data)
+     x$setinv(inv)
+     inv
+ }
