
 ##this function create a matric that is cached for better computation 
## Thank you to http://xmuxiaomo.github.io/2015/06/14/R-Programming-Assignment-2/ for your website it was helpful in sorting out some code gaps I had 


  
  makeCacheMatrix <- function(x = matrix()) {
          m<-NULL
    set<-function(y){
      x<<-y
      m<<-NULL
    }
    get<-function() x
      setmatrix<-function(solve) m<<- solve
         getmatrix<-function() m
            list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
  }
  
  

##the following function computes the the matrix 

  cacheSolve <- function(x=matrix() {
       m<-x$getmatrix()
          if(!is.null(m)){
      return(m)
    }
 matrix<-x$get
       m<-solve(matrix .)
        x$setmatrix(m)
         m
         }
  
