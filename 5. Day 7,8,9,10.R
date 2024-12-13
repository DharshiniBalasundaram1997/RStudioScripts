#Pie 3d:
pelican = table(PelicanStore$Method.of.Payment)
pelican

pie(pelican, labels = pelican)

headings2 = paste(names(pelican))
pie(pelican, labels = headings2)

values2 = paste(names(pelican), "\n", pelican, sep = "")
pie3D(pelican, labels = values2, 
      main = "Method Of Payment \n [No.Of Payments] ")





#Taking the mtcars Table:
mt = mtcars
View(mt)
attach(mt)

#Scatter Plot:
plot(wt, mpg, cex = 2, pch= 19, col = 1: 8, 
     main = "Scatter Plot Example",
     col.main = "red",
     col.lab = "purple")







# Dot chart - labels - row names:
dotchart(gear, labels = row.names(mt), 
         cex = 0.7,
         pch = 10,
         col = 1:3,
         xlab = "Gear" )




#Taking iris Table:
iris = iris
View(iris)


unique(iris$Species)


#ggplot Function:
ggplot(iris, aes(x = Sepal.Length, y =  Petal.Length) )




#ggplot function , geom_bar function, concatenate:
#geom_bar:
ggplot(iris, aes(x = Sepal.Length, y =  Petal.Length) ) + 
  geom_bar(stat = "identity")




#Coloured Bar graph:
ggplot(iris, aes(x = Sepal.Length, y =  Petal.Length) ) + 
  geom_bar(stat = "identity",fill = "blue")

#geom_bar – aes (color):
ggplot(iris, 
       aes(x = Sepal.Length, y =  Petal.Length, colour = Species) ) + 
  geom_bar(stat = "identity")

#geom_bar – aes (color)- fill:
ggplot(iris, 
       aes(x = Sepal.Length, y =  Petal.Length, colour = Species) ) + 
  geom_bar(stat = "identity", fill = "pink")





#geom_point:
ggplot(iris, aes(x = Sepal.Length, y =  Petal.Length))+ 
  geom_point()

#geom_point – aes (color):
ggplot(iris, 
       aes(x = Sepal.Length, y =  Petal.Length,colour = Species))+ 
  geom_point()




#geom_density:
ggplot(iris, aes(x = Sepal.Length, y =  Petal.Length))+ 
  geom_density(stat = "identity")



#geom_line:
ggplot(iris, aes(x = Sepal.Length, y =  Petal.Length))+ 
  geom_line(fill = )

#geom_line – aes (color):
ggplot(iris, 
       aes(x = Sepal.Length, y =Petal.Length,color = Species))+ 
  geom_line()


# plot - point - p:
counts = table(iris$Sepal.Length)
counts
plot(counts, type = "p")


# plot - line -l:
counts1 = table(iris$Sepal.Length)
counts1
plot(counts1, type = "l")

# plot - point & Line - o:
counts2 = table(iris$Sepal.Length)
counts2
plot(counts2, type = "o")

counts2 = table(iris$Sepal.Length)
counts2
plot(counts2, type = "o", col = "red")

#Histogram
values = c(5,6,7,8)
hist(values, col = "pink", border = "yellow")

#Histogram
values3 = c(4,5,6,7,8,5,6,9)
hist(values3, col = "pink", border = "yellow")


#Histogram
values3 = c(8,9,12,13,19,21,22,36,31,41,33)
hist(values3, col = "pink", border = "yellow")

#Histogram – xlim, ylim, breaks:
values3 = c(8,9,12,13,19,21,22,36,31,41,33)
hist(values3, col = "pink", border = "yellow",
     xlim = c(0,40),
     ylim = c(0,5),
     breaks = 5)


#ggplot , geom_histogram:
ggplot(iris, aes(x = Sepal.Length, y =Petal.Length,color = Species))+ 
  geom_histogram(stat = "identity")

attach(iris)

#Day 9:
#box plot:
boxplot(Petal.Length ~ Species, data  = iris)


#box plot - Horizontal:
boxplot(Petal.Length ~ Species, data  = iris, 
        horizontal = T)

boxplot(Petal.Length ~ Species, data  = iris, 
        horizontal = F)


#Density PLot:
a = c(4,5,6,9,8)
plot(density(a))


b = density(Petal.Length)
plot(b)

c = density(Sepal.Length)
plot(c)

d = density(Petal.Width)
plot(d)

f = density(Sepal.Length)
plot(f)
polygon(f, col = "red", border = "green" )





#Day 10:

#Installing plotly:
install.packages("plotly")
library(ggplot2)
library(plotly)


#Plotly - Bar:
a = plot_ly(iris,type = "bar", color = "red", 
            x = ~Species , y = ~Sepal.Length)
a


b = plot_ly(iris,type = "bar", color = ~Species, 
            x = Sepal.Length)
b

c = plot_ly(iris,type = "histogram", color = "red", 
            x = Species , y = Sepal.Length)
c

#imported pelican dataset
attach(PelicanStore)
ps = PelicanStore
ps
View(ps)
attach (ps)

#Plotly - Bar:
d = plot_ly(ps, type = "bar", color = ~Method.of.Payment,
            y = ~Sales)
d

#Plotly - Box:
d = plot_ly(ps, type = "box", color = ~Method.of.Payment,
            y = ~Sales)
d

#Plotly - scatter:
d = plot_ly(ps, type = "scatter", color = ~Method.of.Payment,
            y = ~Sales)
d

#Plotly - histogram:
d = plot_ly(ps, type = "histogram", color = ~Method.of.Payment,
            y = ~Sales)
d
