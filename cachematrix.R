## Listed below are the comments as an explanation with respect to the definition of the functions
## Also listed below are the commands and the functions for each of the variables 

## The functions specified are used to encode the following and is used as a fullfilment of this Coursera course: R Programming
## Week 3 Assignment in Gitihub accomplished April 12, 2021

## The resulting function generates a unique "matrix" object that can cache Q
makeCacheMatrix <- function(x = matrix()) {                                             ## The default mode of "matrix" is used to determine the statement.
q <- NULL
        ## As can be seen above, put q as a NULL thus this will hold the value for the matrix of the mean
        set <- function(y) {                                                            ## Find the set function and assign it to a new variable
                q <<- y;                                                                ## In the parent environment, assigns the value of q
                q <<- NULL;                                                             ## If a new matrix is discovered or calculated, set q to NULL.
}
        ## This is to define the function to get the mean of the variable
        Get <-function()x;
        ## This means that the value of the mean must be assigned; assigns the value of the mean
        setQ <- function(mean) q <<- mean;
        ## This function is for the mean to be set
        getQ <- function() q;
        ## This means that the function must be referred with $ operator
        return(list(set = set, get = get, setQ - setQ, getQ = getQ))
}

## Input comments with observations that illustrate the point
## As can be seen above, this means that the function calculates the mean of the special matrix returned by makeCasheMatrix
## If the mean has been estimated in a case where the matrix has remained unchanged,
## therefore, this only means that the cachesolve will regain the mean.

cacheSolve <- function(x, ...) {
        ## Return the mean of "x" as the matrix
        q <-- x$getmean()
        if(!is.null(q)) {
        message("getting cached data!")
        return(q)
}

        
        mtrx <-- x$get()
        q <-- solve (mtrx,...)
        x$setQ(q)
        q
        }
        






