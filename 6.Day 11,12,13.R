
#Day 11:
ps = PelicanStore
ps

attach(ps)

library("dplyr")

#Created new table with required columns - using select:
secondary_Data = select(ps, Method.of.Payment, Sales, Gender)


#Created new table with required columns - using select - starts with:
secondary_Data2 = select(ps, starts_with("M"))


#Created new table with required columns - using select - ends with:
ps3 = select(ps, ends_with("S"))



#Created new table with required columns - using select - contains:
ps4 = select(ps, contains("ge"))


#Created new table with required columns - using select - matches:
ps5 = select(ps, matches("ge"))


#Filter - the age which is greater than 30:
Filter1 = filter(ps, Age > 30)


#And Operator, Equal to operator:
#Filter the data in which age>30 and
# filter the data in which method of payment = visa 
# and i want all the female customers:
Filter2 = filter(ps,  Gender== "Female"& Method.of.Payment== "Visa" , Age>=40)
Filter2

Filter2 = filter(ps,  Gender== "Female"& Method.of.Payment== "Visa" & Age>=40)
Filter2

#OR Operator, Equal to operator:
Filter3 = filter(ps,  Gender== "Female" | Method.of.Payment== "Visa",Age>30)
Filter3

#Method of payment is visa and sales is > 100:
Filter4 = filter(ps, Method.of.Payment == "Visa"& Sales>100)
Filter4


#Day 12:

# Question: filter the data in which method of payment = visa and
# i want all the female customers only, age > = 40
ps = PelicanStore
ps

attach(ps)
library("dplyr")

data1 = filter(ps, Method.of.Payment == "Visa" & Gender == "Female" & Age >= 40)
data1




#BRACKET - Question - all the customers use visa and mastercard as a method of payment 
#and who are not married:
  
data2 = filter(ps, (Method.of.Payment == "Visa" | Method.of.Payment == "Mastercard")
               & Marital.Status == "Single")
data2


#Not Equals To:
#Question - all the customers use visa and mastercard as a method of payment 
#and who are not married:

data2 = filter(ps, (Method.of.Payment == "Visa" | Method.of.Payment == "Mastercard")
               & Marital.Status != "Married")
data2




#Question – Find the data of the customers who are using 
# American Express Card and Master Card 
# giving the sales >= 100?
data3 = filter(ps, 
               (Method.of.Payment == "American Express" | Method.of.Payment == "Mastercard")
               & Sales >= 100)
data3



# COunt:
count(ps, Gender)

#count is same as table
a = table(Gender)
a

#Arrange the Gender in asc, Age in desc:
data4 = arrange(ps, Gender, desc(Age))
data4

#Arrage the Gender in asc, Method of paymnet in asc, Age in desc
data5 = arrange(ps, Gender,Method.of.Payment, desc(Age))
data5

#mutate:
new_value = mutate(ps, Sales_Per_Item = Sales/Items )
new_value

new_value1 = mutate(ps, Profit = Sales - Discount)
new_value1

#mutate- multiple columns:
new_value2 = mutate(ps, Sales_Per_Item = Sales/Items, Profit = Sales - Discount, profit100 = Profit * 100)
new_value2


# Summarise - sum, average, mean, mode, median
new_value3 = summarise(new_value2, mean(Age))  
new_value3

#giving title
new_value3 = summarise(new_value2, Average_Title = mean(Age))  
new_value3

#Average of Profit:
new_value4 = summarise(new_value2, Average_Profit = mean(Profit))  
new_value4


#GroupBy + Summarise:
#I want to find the Average sales for Male and female
data6 = summarise(group_by(ps, Gender), Avegare_Sales_by_Gender = mean(Sales))
data6

#What is the average discount given by propriety card:
data7 = summarise(group_by(ps, Method.of.Payment = "Proprietary Card"), Avegare_Sales_by_Gender = mean(Discount))
data7


#Max - SAles:
max(Sales)
#Min - SAles:
min(Sales)

