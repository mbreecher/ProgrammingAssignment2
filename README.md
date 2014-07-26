## Sample output

Prepare a sample matrix using the makeCacheMatrix function
	#> test <- makeCacheMatrix( matrix(c(1,2,3,4), nrow = 2, ncol = 2) );

	#> summary(test)
	#           Length Class  Mode    
	#set        1      -none- function
	#get        1      -none- function
	#setinverse 1      -none- function
	#getinverse 1      -none- function

	#> test$get()
	#     [,1] [,2]
	#[1,]    1    3
	#[2,]    2    4

	#> cacheSolve(test)
	#     [,1] [,2]
	#[1,]   -2  1.5
	#[2,]    1 -0.5

	# running a second time shows we return the cached value
	#> cacheSolve(test)
	#getting cached data
	#     [,1] [,2]
	#[1,]   -2  1.5
	#[2,]    1 -0.5