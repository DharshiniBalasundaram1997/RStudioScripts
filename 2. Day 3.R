# 0 through 10 
0:10   

# 10 through 0 -> Reverse Order
10:0   

# print the data from the middle
4:9 

#Count down by 2
seq(1,20, by = 2)

#Count down by -3 ->Reverse Order
seq(30, 0, by = -3)

#Multiple Assignments in R
c = d = e = 3



#Data types in R Studio
#Numeric and Integer :
n1 = 15  # Double precision by default 
n1 

typeof(n1) 

n2 = 9  # Double precision by default 
n2 

typeof(n2)

#String :
c1 = "c" 
c1 

c2 = "a string of text" 
c2 

typeof(c2) 


#Logical :
l1 = TRUE 
l1 
typeof(l1) 

l2 = F 
l2 
typeof(l2) 


#Vector - Integer
v1 = c(1, 2, 3, 4, 5) 
v1 

is.vector(v1) 


#Vector - String
v2 = c("a", "b", "c") 
v2 
typeof(v2)
is.vector(v2)

v4 = c("red","yellow","green")
v4

is.vector(v4) 


#Vector - Logical
v3 = c(TRUE, TRUE, FALSE, FALSE, TRUE) 
v3 

is.vector(v3) 


v5 = c(T,F,T,F) 
v5 

is.vector(v5) 

# Vector can use logical, string, integer.
# But vector cannot use combination of all 3
# The content which is store in an array is always in vector format. 
# The 1D Array in R almost looks like vectors.






#Matrix :
m1 = matrix(c(T, T, F, F, T, F), nrow = 2) 
m1 

m2 = matrix(c("a","b","c","d"),nrow = 2) 
m2 

m3 = matrix(c("a","b","c","d"),nrow = 2, byrow = T) 
m3 




#Arrays:
a1 = array(c( 1:24)) 
a1 

a1 = array(c( 1:24), c(4, 3, 2)) 
a1 


a1 = array(c( 1:20), c(4, 3, 2)) 
a1 


#List:
o1 = c(1, 2, 3) 
o2 = c("a", "b", "c", "d") 
o3 = c(T, F, T, T, F) 
list1 = list(o1, o2, o3) 
list1 

# Lists within lists:
o1 = c(1, 2, 3) 
o2 = c("a", "b", "c", "d") 
o3 = c(T, F, T, T, F)
list1 = list(o1, o2, o3)
list2 = list(o1, o2, o3, list1)  
list2 

?iris
View(iris)




