#See README.md for more info on the style and formatting of the notes and code



2.0
#Vectors


c(1,2,3)
	#1,2,3 can be any numbers or values of course


	#Vector w/ Strings
c('a','b','c')
	#Use single quotation marks to designate that each of the characters is in fact a string. Doesn't matter if it's single or double quotes, so long as you are consistent, though single helps avoid confusion when you actually need to use double quotes for words and sentences.


	#Sequence Vectors
	#Two ways to display sequence vectors
1. start:end
c(5:9)

2. sequence command
seq(5,9)

	#Sequence with increments
seq(5,9,.5)
	#The first two numbers represent the range and the last one represents the rate/scale of the increment.


	#Vector Access
	#Start with:
x <- c('string 1'.'string 2', 'string 3')
	#You can call an individual string from the vector via: 
x[1] or x[2] 
	#The number in brackets correlates to the string you are calling up with the result being "string 1" and 'string 2'

	#You can also assign new values to strings
x[1] <- "string 1.1"
	#You can also add strings and values
x[4] <- 'string 4'

	
	#Vector Names
	#Given a vector (in this case a three item one) and stored in a variable, you can assign names to the vector's elements by passing a second vector with names

ranks <- 1:3
names(ranks) <- c("first", "second", "third")
	
	#Assigning names to the vector can act as labels for the data and can be used to access the values of the vectors.
ranks["first"] 
	#This will spit out:
first 
	1
	
	
	#Plotting Vectors 
	
	#Setting vector for plotting is same as setting other vectors
vesselsSunk <- c(4, 5, 1)
	#You plot using either the 'barplot' function or just 'plot'. Below I use the 'barplot'

barplot(vesselsSunk)
	#You can assign names to the vector values much as you did before 
names(vesselsSunk) <- c("England", "France", "Norway")
	#This assigns names to the vector values in the original variable based on position in the parenthesis
	
	
	#Vector Math 
	#If we set a <- c(1,2,3) we can then add to each of the vector values by:
a + 1	
	#And it will spit out [1] 2 3 4. It adds 1 to each of the vector values in the vector

	#We can also divide using
a/2
	#And multiply using 
a*2
	
	#You can also compare two vectors by doing the following 
a == c(1,99,3)
	#This will compare the vector's values of each and return TRUE or FALSE values for each at their respective positions. 
	
	
--------------------------------------------------------------------------------------------------------
