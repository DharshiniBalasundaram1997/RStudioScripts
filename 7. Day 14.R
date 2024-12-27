#Day 14:
ps = PelicanStore
ps

attach(ps)
library("dplyr")

#Range - Here we can find the minimum value and maximum value:
range(ps$Items)

#Here we can find the minimum value and maximum value of Sales:
range(ps$Sales)


#Standard Deviance: sd means Standard Deviance
sd(ps$Sales)

#Variance: var means Variance
var(ps$Sales)

#Summary:
summary(ps$Sales)





#Creating NEw Table :
salary = c(4,6,8,10,11,14,16)
exp = c(2,3,4,5,6,7,8)
regression = data.frame(salary, exp)
View(regression)  


#Linear Model - plot:
lm = lm(salary ~ exp , data = regression)
plot(lm)




#linear Model - Ggplot , geom_point:
library(ggplot2)
lm = lm(salary ~ exp , data = regression)
ggplot(lm, aes(salary,exp)) + geom_point()



#linear Model - Ggplot - stat smooth , method:
lm1 = lm(salary ~ exp , data = regression)
ggplot(lm1, aes(salary,exp)) + geom_point() + 
  stat_smooth(method = "lm")


#cor.test:
cor.test(regression$salary , regression$exp)





#cor.test - Using iris DataSet:
df <- iris
View(iris)
attach(iris)

model1 = lm(Sepal.Length~Petal.Length)
plot(model1)

ggplot(iris,aes(Sepal.Length,Petal.Length)) + geom_point() + geom_smooth(method = "lm")
cor.test(Sepal.Length,Petal.Length)


ggplot(iris,aes(Sepal.Length,Sepal.Width)) + geom_point() + geom_smooth(method = "lm")
cor.test(Sepal.Length,Sepal.Width)


#Correlation – only numeric values not string values:
head(iris)

#We are removing the Species Column:
data1 <- iris[,c(-5)]
data1


#Finding the correlation between the columns in tables:
cor(data1)
data2 = cor(data1)
View(data2)

#Install Corrplot packages:
install.packages("corrplot")
library(corrplot)

#Corrplot:
corrplot(data2)


#Corrplot - method - pie:
corrplot(data2, method = "pie")


#Corrplot - method - color:
corrplot(data2, method = "color")


#Corrplot - method - number:
corrplot(data2, method = "number")





#Gapminder Package:
install.packages("gapminder")
library(gapminder)
View(gapminder)


#Using Gapminder dataset – performing the correlation & Linear Model Regression:
data3 = gapminder[,c(-1,-2)]
View(data3)

#Correlation
corrdata3 = cor(data3)
View(corrdata3)

#Liner Model Regression using cor() data set:
ggplot(corrdata3, aes(year,lifeExp))+ geom_point() + stat_smooth(method = "lm")

#correlation plot:
corrplot(corrdata3, method = "number")




#Scatter plot:
install.packages("car")
library(carData)
View(cars)
attach(cars)

scatterplot(data=cars, speed~dist)


#Scatter plot - Smooth= False:
scatterplot(speed~dist, data = cars,smooth = FALSE)

#Scatter plot - Smooth= True:
scatterplot(speed~dist, data = cars,smooth = TRUE) 

