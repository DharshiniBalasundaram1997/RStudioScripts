install.packages("ggplot2")
library(ggplot2)

install.packages("plotly")
library(plotly)

#Creating New Table:
Salary <- c(2,4,6,8,10,11,14)
exp <- c(1,2,3,4,5,6,7)
regression <- data.frame(Salary, exp)
View(regression)

#Linear Model Regression - Using ggplot
ggplot(regression, aes(exp, Salary))+geom_point()+stat_smooth(method="lm")


#ggploty is available in plotly package to label the graph
P <- ggplot(regression, aes(exp, Salary))+geom_point ()+stat_smooth(method="lm")
ggplotly(P)




#Plot_ly function:
a = iris
View(a)
attach(a)

abc <- plot_ly(a,x = Sepal.Length, color = Species)
abc


#Plot_ly function - Using type = box plot:
abc1 <- plot_ly(a,x = Sepal.Length, color = Species, type = "box")
abc1


#Plot_ly function - Using type = bar graph:
abc2 <- plot_ly(a,x = Sepal.Length, color = Species, type = "bar")
abc2


#Plot_ly function - Using type = scatter graph:
abc3 <- plot_ly(a,x = Sepal.Length, color = Species, type = "scatter")
abc3


#Plot_ly function - Using type = histogram graph:
abc4 <- plot_ly(a,x = Sepal.Length, color = Species, type = "histogram")
abc4





#ggplot to find regression and correlation:
ggplot(iris, aes(Sepal.Length, Petal.Length))+geom_point ()+stat_smooth(method = "lm")
                                                                         
#ggplot + ggplotly to find regression and correlation:
abc5 <- ggplot(iris, aes(Sepal.Length, Petal.Length))+geom_point()+stat_smooth(method = "lm")
ggplotly(abc5)

#ggplot + Ggplotly + geom_line
abc6 = ggplot(iris, aes(Sepal.Length, Petal.Length)) + 
  geom_line(stat = "identity", color = "blue")
ggplotly(abc6)









