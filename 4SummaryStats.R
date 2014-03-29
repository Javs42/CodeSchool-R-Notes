#See README.md for more info on the style and formatting of the notes and code


4.0 
#Summary Statistics



	#Mean
	
	#Simply use the mean function with a given set of data
limbs <- c(4,3,4,3,2,4,4,4)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Blackbeard')

mean(limbs)
	
	#You can graph the variable/vector 'limbs' by using the same "barplot" function as before
	
barplot(limbs)

	#To draw a horizontal line across the plot, you're going to use the "abline" function in conjuction with setting parameters with 'h'

abline(h = mean(limbs))
	#Abline will draw a line across the data at the mean of the data



	#Median
	#The call up is the same was with "mean"
median(limbs)
	#Using "abline" with median will also reflect a horizontal or vertical line that is at the median point

abline(h=median(limbs))



	#Standard Deviation
	#Statisticians use the concept of "standard deviation" from the mean to describe the range of typical values for a data set. For a group of numbers, it shows how much they typically vary from the average value. To calculate the standard deviation, you calculate the mean of the values, then subtract the mean from each number and square the result, then average those squares, and take the square root of that average.
	
	#So, if we're given a data set
pounds <- c(45000,50000,35000,40000,35000,45000,10000,15000)
	#We can graph it using barplot(pounds)
	#Then set a value for the mean
meanValue <- mean(pounds)
	#To help visually, plot the abline according to the meanValue
abline(h = meanValue)
	#Then you can set the deviation value/variable to the 'sd()' command
deviation <- sd(pounds)
	#Entering 'deviation' will bring us the standard deviation of our selected data set. 	
	
	#We can take out abline further and add the sd value to our meanValue
abline(h = meanValue + deviation)
	#This will draw two lines on our barplot 
