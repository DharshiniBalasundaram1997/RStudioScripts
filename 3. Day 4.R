#How many rows present in the table
nrow(pelican_store)

#How many columns present in the dataset:
ncol(pelican_store)


#fetch the names of columns from the dataset:
names(pelican_store)


#fetch the name of 3rd column from the dataset:
names(pelican_store[3])

#by default it will show top 6 rows:
  head(pelican_store)

#by default it will show bottom 6 rows:
tail(pelican_store)

#Fetch top , bottom rows of discount column:
head(pelican_store[4])
tail(pelican_store[4])

#it will show top 2 rows only:
head(pelican_store,2)


#it will show bottom 2 rows only:
tail(pelican_store,2)

# by default fetch , first 6 rows of sales:
head(pelican_store$Sales)

# i want to fetch first 10 rows of sales:
head(pelican_store$Sales,10)

#i want to fetch all the rows from the sales column:
pelican_store$Sales


#it will show top 10 rows only:
head(pelican_store, n=10) 

#it will show bottom 10 rows only:
tail(pelican_store, n= 5)  

# fetch the digit from the cell 3rd row with 5th column:
pelican_store[3,5]  #pelican_store[rows,column] 


# fetch the digit from the cell 4th row with 8th column:
pelican_store[4,8]


#show all the values from 1 to 3 columns present in the dataset:
pelican_store[ , 1:3]


# show all values present in 2 column from dataset:
pelican_store[ , 2:2]


#show all the unique values present in particular column:
unique(pelican_store$Method.of.Payment)

unique(pelican_store$Gender)

unique(pelican_store$Marital.Status)

#find all the unique values in the column with the number they are present in the dataset:
table(pelican_store$Gender)

table(pelican_store$Method.of.Payment)
table(pelican_store$Marital.Status)

# I want to find which gender is using which Method of payment:
table(pelican_store$Gender, pelican_store$Method.of.Payment)


# Storing the column is particular variable:
payment = table(pelican_store$Method.of.Payment)
payment

#Arrange Age column in Ascending order: 
Agedata1 = arrange(pelican_store,Age)
Agedata1

#Arrange Age column in Descending order: 
Agedata2 = arrange(pelican_store,desc(Age))
Agedata2

#sort the data arranged by gender then it will give priority to method of payment then sort age in descending order:
Agedata3 = arrange(Agedata2,Gender,Method.of.Payment, desc(Age))
Agedata3


