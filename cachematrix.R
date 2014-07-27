## Creates a function that takes in a matrix. The makeCacheMatrix has a get & set function

makeCacheMatrix <- function(x = matrix()) {
  
  ## Still not really sure what this does I think the best explanation I found is in the forum
  ## https://class.coursera.org/rprog-005/forum/thread?thread_id=967 
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  ##The commands to obtain the calculations on the inputted matrix
  get<-function() x  ##Obtains the data inputted
  setmatrix<-function(solve) m<<- solve  ##calculates the inverse and adds it to the variable 
  getmatrix<-function() m  ##Returns the inverse of m when asked to from another function
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  ##If m is not null return what we have already calculated
  if(!is.null(m)){ 
    message("getting cached data")
    return(m)
  } 
  else{
    ## if m is null
    matrix<-x$get() ##Obtain what was inputted
    m<-solve(matrix, ...)
    x$setmatrix(m)
    return(m)
    }
}


