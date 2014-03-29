#See README.md for more info on the style and formatting of the notes and code


6.0
#Data Frames

#To set a data frame you will define a variable/vector with the data.frame argument

treasure <-data.frame(weights, prices, types)

#Printing "treasure" will output the data frame


--------------


#Data Frame Access
#Just as is the case with Matrices, you can access individual portions of a data frame using "[[]]" or $.
#In the [[]] you can put the number of the column or the actual name of the data column you want presented. For examples

> treasure[[2]]
and
> treasure[["prices"]]
or 
>treasure$prices
and
>treasure$2
#Are all valid and will call up their respective data frames/sets
#Remember to keep the variable (In this case "treasure")first in the command. 


--------------


#Loading Data Frames

#In a given working directory, utilizing the "list.files()" function brings up the files and folders of that directory
#To call up a .csv file, use the "read.csv" function

>read.csv("targets.csv")

#To call up .txt files, use the "read.table" in conjunction with the "sep" argument to define the separator character in your text file

>read.table("infantry.txt". sep="\t")

#Since the separator in .txt files is tabs, R defines tabs as "\t" in the "sep" function 
#Note that the first line in text files is not treated as a column header by the "read.table" function. 
#To change this behavior, designate "heade=TRUE"

>read.table("infantry.txt", sep="\t", header=TRUE)


--------------


#Merging Data Frames

#Joining two data sets is done via the "merge" function.
#The two or more data sets you're looking to merge need to be made into data frames before they can be merged

>targets <- read.csv("targets.csv")
>infantry <- read.table("infantry.txt", sep="\t", header=TRUE)

#The merge function will take the arguments with an (x,y) frame by default 

>merge(x = targets, y = infantry)

#This will then merge the two data set and leave only one field for similar/duplicate columns and fields
