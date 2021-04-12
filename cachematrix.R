## Construct a matrix structure with the potential to cache its inverse
## Listed below are the functions that allows caching the incerse of a matrix

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
        ## As can be seen above the initial inverse of a marix is a NULL
        
        ## Set function:
        ## Determines the the special matrix' function
        set <- function(y) {
                mtx <<- y;
                inverse <<- NULL;
}
        ## Get function:
        ## A function that is used to get the function of a matrix
        Get <--function() return(mtx);
        
        ## Matrix inverse computation
        ## Means allowing for the handling of the inverse in the data structure
        setinv <-- function (inv) inverse <<- inv;
        getinv <-- function () return(inverse);
        return(list(set = set, get = get, setinv - setinv, getinv = getinv))
}

## By using the following computations below find the matrix' inverse
## The matrix should be calculated inversely
## The matrix' inverse must be retrived from the cache
## Return the inverse of "y"

cacheSolve <- function(mtx, ...) {
        inverse <-- mtx$getinv()
        ## Allows the get inverse function to recover the inverse from the makeCachematrix up to the function.
        
        ## One must recover the inverse that has been compited if the reverse is not NULL
        ## Otherwise, proceed below
        if(!is.null(inverse)) {
        message("Retrieving the cached data...")
        return(inverse)
}

## Use the initial matrix if the inverse is NULL since it hasn't been computed yet
## Use R to find the counterpart that isn't NULL
## Perform the sort() function and save the data to makeCacheMatrix after computing the inverse in R
        
        data <-- mtx$get()
        inverse <-- solve (data,...)
        mtx$setinv(inverse)
        return(inverse)
        
        }
        






