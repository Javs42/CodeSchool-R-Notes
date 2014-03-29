#See README.md for more info on the style and formatting of the notes and code



3.0 
#Matrices

	#To create a matrix, simply use the matrix command
matrix(0,3,4)

	#You can also utilize vectors and variables in matrices. 
a <- 1:12
matrix(a,3,4)

	#You can also use the "dim" assignment to set dimensions for a matrix 
plank <-1:8
dim(plank) <-c(2,4)
	#dimensions are set by passing plank through the vector c(2,4)
	#printing plank will return a matrix that is only (2,4) 



#Matrix Access
	#Matrix access works in the same way as with vectors
plank[2,3]
	#Remember to utilize brackets and the same x,y system when accessing a matri

	#You can also set a single value in the matrix to whatever value you would like 
plank[1,4] <-0

	#To call up an entire row of the matrix, do
plank[2,]

	#To call up an entire column, do
plank[,4]

	#You can also call up multiple rows or columns by providing a vector/sequence with the index that you want
plank[, 2:4]



#Matrix Plotting
	#If a matrix has been set with your data, simply use the "countour" command
elevation <- matrix(1,10,10)
elevation[4,6] <-0 
countour(elevation)
	#Contour will createa a two dimensional plot of your matrix.
	#To create a three dimensional plot, use the "persp" function
persp(elevation)
	
	#You can also change the view/perspective of the "persp" command using
persp(elevation, expand=0.2)
	#Utilize the change in "expand=" and then set your new parameters/limits
