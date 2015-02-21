## la siguiente función llamada "makeCacheMatrix" permitira crear un objeto llamado (matriz)que 
## puede almacenar su inversa en caché 

makeCacheMatrix <- function(x = matrix()) {
cache = NULL ## determinada función  permite almacenar la matriz en caché,
setMatrix <-function(newValue){## y  limpiar el cache cuando se asigna un nuevo valor a la matriz,
x<<-newValue
cache = NULL
}
getMatrix<-function(){ ## tambien devuelve la matriz almacenada y almacena en el cache el argumento dado
x
}

cacheInverse <- function(solve) { 
                 cache <<- solve 
         } 
 
 
getInverse <- function() { ## y permite  obtener el valor agredado al cache.
                 cache 
         } 
          
         
         list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse) 
 
}



## La segunda función calcula la inversa de la "matriz" especial hecha  por "makeCacheMatrix" anteriormente. 
## y te permite  recuperar la inversa; cuando  la inversa haya sido calculada siempre y cuando la  matriz no haya sido modificada


cacheSolve <- function(x, ...) {
 
         inverse <- y$getInverse() ##obtener el valor almacenado en el cache
        
         if(!is.null(inverse)) { ##recupera el valor en el cache
                 message("getting cached data") 
                 return(inverse) 
         } 
        
         data <- y$getMatrix() ##obtener la matriz y calcular la inversa
         inverse <- solve(data) 
         y$cacheInverse(inverse) 
          
         ## Return a matrix that is the inverse of 'x'
         inverse ##permite devolver inversa
 } 
        
