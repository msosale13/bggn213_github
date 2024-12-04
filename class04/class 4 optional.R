# Class 4 Optional Homework Lab
source("http://thegrantlab.org/misc/cdc.R")
View(cdc)
head(cdc$height)
tail(cdc$weight, 20)
cor(cdc$height, cdc$weight)
hist(cdc$weight)
hist(cdc$height)
height_m <- cdc$height * 0.0254
bmi <- (weight_kg)/(height_m^2)
plot(cdc$height, bmi)
cor(cdc$height, bmi)
head(bmi >= 30, 100)
sum(bmi >= 30)

# Q10
# 1. access the gender column
# 2. specifically pull out bmi >= 30
# 3. count up m and f values using the table function
cdc_bmi <- cbind(cdc, bmi)
obese <- cdc[, cdc$bmi >= 30]
  
df[df$numbs > 3,]