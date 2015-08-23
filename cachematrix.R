## Caching a matrix and retrieved its inverse

##  function caching a given matrix 

makeCacheMatrix <- function(x = matrix()) {

	inverse_obj<- NULL
 
	set <- function( a_matrix){
		x<<-a_matrix
		inverse_obj<<- NULL
	}
	get <- fucntion() x
	
	setInverse <- function( inverse_mtx ) inverse_obj <<- inverse_mtx 
	getInverse <- function() inverse_obj

	list(set = set, get = get,
		 setInverse = setInverse,
		 getInverse = getInverse)
			 
}


## function retrieves the inverse of a given matrix. If the inverse is already calculated and cached, it is retrieved 
##  if not this is the inverse is calculated , cached and retrieved to user

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		inverse_obj <- x$getInverse()
        if(!is.null(inverse_obj)) {
                message("Caching data found - retrieving")
                return(inverse_obj)
        }
        data <- x$get()
        inverse_obj <- solve(data, ...)
        x$setInverse(inverse_obj)
        inverse_obj
	
}
