#See README.md for more info on the style and formatting of the notes and code


5.0

#Factors 


#Data needs to be grouped into categories, and R's 'factor' allows us to categorize and track the values

	#To create a factor, pass a vector through the factor functions. But first, create your data set/variable/vector value
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')	
types <- factor(chests)
	#"types" is the variable word we're using for this particular data set (types of treasure in various chests). and "chests" describes the variable/vector value we defined previously

	#You can then print the data set/category by simply
print(types)	
	#The output will disply the actual contents of the original 'chests' but also give us the "levels" of our data set (basically just all the unique groups of data)
	#The "levels" output can also be invoked with the "levels" command itself
levels(types)

---------

#Plots with Factors
	#Given a datat set, it is easy to plot them simultaneously
	
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)

plot(weights, prices)

	#The order of the factors in the parenthesis is important because it follows the (x,y) system

	#Under the current arrangement, we can't figure out which chest is which. To figure that out, we convert the factors to integers and passing it to the 'pch' argument of "plot"

plot(weights, prices, pch=as.integer(types))
	
	#This makes easch coordinate (chest for our data set) its own shape on the map. 
	#Because shapes aren't going to be the best way of differentiating among different groups of data, we can add a legend to this particular data set.

legend("topright", c("gens", "gold", "silver"), pch=1:3)

	#This places a legend in the topright section of the graph with the corresponding shapes indicating what is what
	So the string is broken down as
	legend #as command
	("topight" #indicating location
	c("gems", "gold", "silver") #as the labels for the data
	pch=1:3 #signifies the use of the pch character set and then the range of symbols to use for the data set. If there had been 4 lables, then 1:3 would have been insufficient and would have required 1:4
