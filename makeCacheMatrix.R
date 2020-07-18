makeCacheMatrix <- function(x=matrix()) {
##this function is a list of functions that generate a matrix and its inverse
	invrt<-NULL
	set <-function(y) {
		x <<- y
		invrt <<-NULL
	}
	get <-function() {x}
	setInverse <- function(inverse) { inv <<- inverse}
	getInverse <- function() {inv}
	list (set=set, get=get, setInverse=setInverse, getInverse=getInverse)

}
## this function return the inverse of the matrix "x"
cacheSolve <- function (x, ...) {
	invrt <-X$getInverse()
	if (!is.null (invrt)) {
		message ("getting cached data")
		return(invrt)
}
	mat <-x$get()
	invrt <-solve(mat, ...)
	X$setInverse (invrt)
	invrt
}