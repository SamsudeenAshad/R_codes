

#Variable Creation
#1.	Write a R program to create a variable and assign it the value 100. Print the variable.

    #create variable and assign it
    x <- 100
    
    #print variable
    print(x)

#2.	Create variables to store your name, age, and country. Print them in a sentence.
    
    name <- "sample"
    age <- 45
    country <- "UAE"
    
    cat("My name is", name, ", I am", age, "years old, and I live in", country, ".\n")

#3.	Create a variable and assign the sum of two numbers to it. Print the result.
    
    result <- 20+76
    
    print(result)
    
#Assignment Operators
#4.	Assign a value to a variable and use the += operator to increment it by 10. Print the result.
   
    y <- 10
    
    y = y +10 
    
    print(y)
    
    
#5.	Demonstrate the use of *=, /=, and -= operators with an example.
    
    a <-20
    a = a*10
    print(a)
    
    b<- 60
    b = b / 60
    print(b)
    
    c<- 30
    c = c-40
    print(c)
    
#6.	Write a program where you assign a value to a variable and swap its value with another variable without using a temporary variable.
  
     n <- 10
     m <- 20
     
     k <- n
     n <- m
     m <- k
     
     print(n)
     print(m)
     
#Logical Operators
#7.	Write a program to check if a number is greater than 10 and less than 20 using logical operators.
    
     Q <- 12
     
     if (num > 10 & num <20)
       print("is greater than 10 and less than 20")
     
#8.	Combine logical operators (and, or, not) to check if a number is either negative or greater than 100 but not divisible by 5.
#9.	Write a program to determine whether a year is a leap year using logical operators.

#If-Else, For Loop Statements
#10.	Write a program to check if a number is odd or even using if-else.
#11.	Write a program that iterates through numbers from 1 to 50 and prints all multiples of 3.
#Vectors
#12. Generate a sequence of numbers from 5 to 15 with a step of 0.5.
#13. Create a character vector containing the names of the days of the week.

#Matrices
#15.	Create a 3x3 matrix using nested lists and print its elements row by row.
#16.	Write a program to add two 2x2 matrices represented as lists of lists.
#17.	Write a program to calculate the transpose of a 2x3 matrix.

#Data Frames
#18.	Create a simple data frame using pandas with columns: Name, Age, and Marks. Add 3 rows of data.
#19.	Write a program to read a CSV file into a pandas DataFrame and display its first 5 rows.
#20.	Write a program to filter rows from a DataFrame where the Age column is greater than 20.

#Lists
#21.	Write a program to create a list of 10 numbers and find the largest and smallest numbers in it.
#22.	Demonstrate list slicing by printing the first 5 elements and the last 5 elements of a list.
#23.	Write a program to merge two lists and remove duplicates from the merged list.



