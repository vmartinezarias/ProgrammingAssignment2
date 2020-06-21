## PRACTICE: Lexical scoping. STUDENT: Víctor M. Martínez-Arias
## I present two functions, and a couple of sampling data
## makeCacheMatrix: This function creates a special "matrix" 
# object that can cache its inverse from a vector. If the entry data is wrong,
# the function will create an example of how is a correct square matrix.

makeCacheMatrix <- function(x){
  # x is a vector with n values
  a<-matrix(x,sqrt(length(x)),sqrt(length(x)))
  if(sqrt(length(x))==round(sqrt(length(x)))){
    inverse<<-solve(a)
  } else {
    print("No squared matrix found. Inverse can't be calculated. A square matrix is created as example of how a squared matrix should be constructed. Please check your data")
  }
  a
}

## cacheSolve: This function computes the inverse of the special "matrix" returned 
# by makeCacheMatrix above. If the inverse has already been calculated 
# (and the matrix has not changed), then the cachesolve should retrieve the 
# inverse from the cache.

cacheSolve <- function(x) {
  if(exists("inverse")) {
    print(inverse)
  } else {
    print("You can't get this value from a non-squared matrix or a singular one. We strongly recommend to take a look on wikipedia, and learn about matrix algebra")
  }   
}

#### Test data
## Function application with valid data
as<-makeCacheMatrix(c(1,2,3,4)) 
as
cacheSolve(as) #Function with valid-matrix

## Function application with invalid data
rm(inverse) # Erase of the inverse value. Please, use only if you have an "inverse" object in your environment 
bs<-makeCacheMatrix(c(1,2,3,4,5,6)) # Function with invalid matrix
bs
cacheSolve(bs)
