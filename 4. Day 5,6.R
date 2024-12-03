#Which gender uses the method of payment:
table(PelicanStore$Gender)
table(PelicanStore$Gender, PelicanStore$Method.of.Payment)


#Which status uses the method of payment:
table(PelicanStore$Marital.Status)
table(PelicanStore$Marital.Status, PelicanStore$Method.of.Payment)



# To Fetch the heading name along with values - use attach:
attach(PelicanStore)
(table(Marital.Status))



#Arithmetic Operation:
table(Marital.Status,Method.of.Payment) * 100

table (Sales)/100

table(Discount)^3

discount = table(Discount)^3
discount

head(discount)



#proportion 
prop.table(table(Method.of.Payment))
prop.table(table(Method.of.Payment)) ^ 2


#Bar Plot:
x = c(1,2,3,4,5,6)
x
barplot(x)


#Colors in R Studio:
## Get list of color names 
colors()


#Browse URL:
browseURL("https://datalab.cc/rcolors")


#Assigning Colors to Bar plot:
x = c(1,2,3,4,5,6)
barplot(x, col = "aquamarine")


#colors – RGB:
x = c(1,2,3,4,5,6)
barplot(x, col = rgb(139, 35, 35, max = 255))


# colors - hexcodes:
x = c(1,2,3,4,5,6)
barplot(x, col = "#66CD00")


# Can specify several colors in a vector, which will cycle:
x = c(1,2,3,4,5,6)
barplot(x, col = c("cornflowerblue","cyan3"))

x = c(1,2,3,4,5,6)
barplot(x, col = c("cornflowerblue","cyan3", "black"))


# palette:
?palette

#By palette colors in R environment:
palette()

#Use current palette:
x = c(1,2,3,4,5,6)
barplot(x, col = 1:10 )

# rainbow:
x = c(1,2,3,4,5,6,7,8)
barplot(x, col =rainbow(6))



#heat.colors:
x = c(1,2,3,4,5,6,7,8)
barplot(x, col= heat.colors(5))

#terrain.colors:
x = c(1,2,3,4,5,6,7,8)
barplot(x, col= terrain.colors(5))

#topo.colors:
x = c(1,2,3,4,5,6,7,8)
barplot(x, col= topo.colors(5))

#cm.colors:
x = c(1,2,3,4,5,6,7,8)
barplot(x, col= cm.colors(5))


#Plot:
plot(1:8)

#plot - default color:
plot(1:8, col = 1:6)

#cex – scatter plot – size:
plot(1:8, col = 1:6, cex = 2)

#pch – scatter plot – solid color:
plot(1:8, col = 1:6, cex = 2, pch= 18)

#Plot – x and y axis:
plot(1:8, 1:8, col= 1:6, cex = 3, pch= 19)


#Plot – x and y axis - no title:
plot(1:8, 1:8, col= 1:6, cex = 3, pch= 19, xlab = " ", ylab = " ")
plot(1:8, 1:8, col=2, pch=19, cex=3, xlab="", ylab="") 

plot(1:8, 1:8, col=2:8, pch=19, cex=3, xlab="", ylab="") 


#Plot – x and y axis - with title:
plot(4:8, 4:8, col= 1:6, cex = 3, pch= 19, 
     xlab = "Scatter - plot x axis", 
     ylab = "Scatter plot y axis ")


#Bar Plot in R - convert values in bar graph 
Payment = table(Method.of.Payment)
Payment

barplot(Payment)


Gender = table(Gender)
Gender

barplot(Gender)

#convert the bars in horizontal format:
Payment = table(Method.of.Payment)
Payment

barplot(Payment, horiz = T)

#convert the bars in vertical format:
Payment = table(Method.of.Payment)
Payment

barplot(Payment, horiz = F)


#convert all the bars red in color
Payment = table(Method.of.Payment)
Payment

barplot(Payment, col = "red")


#convert all the bars in multiple color
Payment = table(Method.of.Payment)
Payment
barplot(Payment,col=c("yellow","blue"))



#giving border:
Payment = table(Method.of.Payment)
Payment
barplot(Payment,
        col=c("0","blue","0","0","0"),
        border="black") 


#Giving Title to bar plot:
Payment = table(Method.of.Payment)
Payment
barplot(Payment,
        col=c("0","blue","0","0","0"),
        border="black",
        main = "METHOD OF PAYMENT") 

#Change the color of the title- col.main:
Payment = table(Method.of.Payment)
Payment
barplot(Payment,
        col=c("cadetblue4","bisque"),
        border="black",
        main = "METHOD OF PAYMENT",
        xlab = "Method Of Payment title in x- axis",
        ylab = "Value in y-axis",
        col.main = "deeppink3"
        )

#Change the color of the title- x and y axis– col.lab:
Payment = table(Method.of.Payment)
Payment
barplot(Payment,
        col=c("cadetblue4","bisque"),
        border="black",
        main = "METHOD OF PAYMENT",
        xlab = "Method Of Payment title in x- axis",
        ylab = "Value in y-axis",
        col.main = "deeppink3",
        col.lab = "red"
)




# change the filling in the bars - density:
Payment = table(Method.of.Payment)
Payment
barplot(Payment,
        col=c("cadetblue4","bisque"),
        border="black",
        main = "METHOD OF PAYMENT",
        xlab = "Method Of Payment title in x- axis",
        ylab = "Value in y-axis",
        col.main = "deeppink3",
        col.lab = "red",
        density=55
)

















#Pie Chart:
slices = c(10,12,4,16,8)
slices

pie(slices)




#Pie chart - Labels:
slices = c(10,12,4,16,8)
slices

pie(slices)

Country = c("US", "UK", "AUSTRALIA","GERMANY","FRANCE")
pie(slices, labels = Country)




#Pie - Only heading will appear:
ps = table(PelicanStore$Method.of.Payment)
ps
pie(ps)
    
#Pie - Only values will appear:    
ps1 = table(Method.of.Payment)
ps1
pie(ps1, labels = ps1)



#Paste – names – labels - Only heading will appear:
ps2 = table(Method.of.Payment)
ps2
pie(ps2, labels = ps2)

newvalues1 = paste(names(ps2))
pie(ps2, labels = newvalues1)





#new line - \n - for Heading:
ps3 = table(Method.of.Payment)
ps3
pie(ps3, labels = ps3)

newvalues1 = paste(names(ps3))
pie(ps3, labels = newvalues1,
    main = "Method Of Payment\n(no.of.payments)")




#Giving values to the pie chart:
ps4 = table(Method.of.Payment)
ps4
pie(ps4, labels = ps4)

newvalues1 = paste(names(ps4))
pie(ps4, labels = newvalues1,
    main = "Method Of Payment\n(no.of.payments)")

values1 = paste(names(ps4), "\n", ps4,sep= "")
pie(ps4, labels = values1,
    main = "Method Of Payment\n(no.of.payments)")





