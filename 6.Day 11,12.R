
#Day 11:
attach(ps)

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

# Question:
# Condition 2. filter the data in which method of payment = visa and
# i want all the female customers only.
# 
# Condition 3. filter the data in which method of payment = visa and
# i want all the female customers only, age > = 40
# 
# Condition 4. all the customers use visa and mastercard
# as a method of payment and who are not married.










