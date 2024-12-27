
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

#Scatter 3d plot:
plot(new_value2$Profit, new_value2$Sales_Per_Item,
     col = c("red", "blue"),
     pch = 18,
     cex = 0.9,
     xlab = "profit",
     ylab = "Sales Per Item",
     main = "Sales + Profit",
     col.lab = "navyblue",
     col.main = "springgreen4")

install.packages("scatterplot3d")
library(scatterplot3d)


scatterplot3d(new_value2$Profit, new_value2$Sales_Per_Item,
              new_value2$Age,
              pch = 18,
              main = "Sales + Profit + Age",
              col.main = "springgreen4",
              color = "blue")


#scatterplot3d - using sequence:
scatterplot3d(new_value2[ , 8:10],
              pch = 18,
              cex.symbols =  0.9,
              main = "Sales + Profit + Age",
              col.main = "springgreen4",
              color = "pink")



#Set Angles in 3D Scatter Plots :
scatterplot3d(new_value2[ , 8:10],main = "Sales + Profit + Age",
              col.main = "springgreen4",color = "blue",
              angle = 180)

scatterplot3d(new_value2[ , 8:10], main = "Sales + Profit + Age",
              col.main = "springgreen4",color = "blue",
              angle = 360)

scatterplot3d(new_value2[ , 8:10], main = "Sales + Profit + Age",
              col.main = "springgreen4",color = "blue",
              angle = 10)

#3D Labels - x,y,z axis title in 3D Scatter Plots :
scatterplot3d(new_value2[ , 8:10], main = "Sales + Profit + Age",
              col.main = "springgreen4",color = "blue",
              xlab = "Age",
              zlab = "Profit",
              ylab = "Sales Per Item")







# Box and Grid Parameters to 3D Scatter Plots:
scatterplot3d(new_value2[ , 9:11],
              pch = 18,
              box = TRUE, grid = FALSE)

scatterplot3d(new_value2[ , 9:11],
              pch = 18,
              main = "Sales + Profit + Age",
              col.main = "springgreen4", 
              box = FALSE, grid = TRUE)

scatterplot3d(new_value2[ , 9:11],
              pch = 18,
              main = "Sales + Profit + Age",
              col.main = "springgreen4", 
              box = FALSE, grid = FALSE)

scatterplot3d(new_value2[ , 9:11],
              pch = 18,
              main = "Sales + Profit + Age",
              col.main = "springgreen4", 
              box = TRUE, grid = TRUE)


#Height in 3D Scatter  PLOT:
scatterplot3d(new_value2[ , 9:11],
              pch = 18,
              main = "Sales + Profit + Age",
              col.main = "springgreen4", 
              box = FALSE, grid = FALSE,
              type = "h")



#3dScatter Plots - Grid colors
scatterplot3d(new_value2$Profit, new_value2$Sales_Per_Item,
              new_value2$Age, 
              col.axis =  c("#00AFBB", "#E7B800", "#FC4E07"), #OUTLINE
              col.grid = c("#00AFBB", "#E7B800", "#FC4E07"), #GRID COLOR
              col.lab = c("#00AFBB", "#E7B800", "#FC4E07"), #COL.LAB -> AXIS
              color = "red")


#Pairs Function:
pairs(new_value2[,9:11], pch = 19)  

pairs(new_value2[,8:10], pch = 10,  cex = 1, 
      col = c("#00AFBB", "#E7B800", "#FC4E07"))




#Legend:
scatterplot3d(new_value2$Profit, new_value2$Sales_Per_Item,
              new_value2$Age, 
              col.axis =  c("#00AFBB", "#E7B800", "#FC4E07"),
              col.grid = c("#00AFBB", "#E7B800", "#FC4E07"),
              col.lab = c("#00AFBB", "#E7B800", "#FC4E07"),
              color = "pink")
legend(x = "topright", legend = c(new_value2$Age) ,
       col = c("red","green"), pch = 16, bty = "n", title = "Legend Title") 






#Assigning colors to 3D Scatter Plots - as.factor:
install.packages("rgl")
library(rgl)

install.packages("car")
library(car)

mycolors = c('royalblue1', 'darkcyan', 'red')
scatterplot3d(new_value2$Profit, new_value2$Sales_Per_Item,
              new_value2$Age, cex.symbols = 2,pch = 16,
              color = mycolors[as.factor(new_value2$Method.of.Payment)])

legend(x = "left", ,
       inset=.05,
       col = c(mycolors), 
       pch = 15,  cex=.5,       
       title="Number of Method of payemts",
       legend = c("Mastercard","visa","Discover","American Express") )




