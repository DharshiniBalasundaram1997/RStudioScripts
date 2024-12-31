#Hypothesis Testing:
ht = hypothesis_testing
attach(ht)

#Sum of Price Consiousness of each rows:
sum_of_Price_Consiousness = PC1 + PC2 + PC3 + PC4
sum_of_Price_Consiousness

#Sum of Quality Consiousness of each rows:
sum_of_QC = QC1 + QC2 + QC3 + QC4
sum_of_QC


#Independent Sample T – Test: 
#Null Hypothesis:  
  #Ho: There is no significant difference in price consciousness between male and female customers.  
#Alternative Hypothesis:  
  #H1: There is significant difference inprice consciousness between male and female customers.  

#if p-value > 0.05 we have to accept the null hypothesis 
#if p-value < 0.05 we have to accept the alternative hypothesis

#Price Consiousness
t.test(sum_of_Price_Consiousness ~ Gender)



#Quality Consiousness
t.test(sum_of_QC ~ Gender)




#Hypothesis Testing - Anova Analysis: Anova Analysis means -> Analysis of  variance
summary(aov(sum_of_Price_Consiousness ~ Gender))












