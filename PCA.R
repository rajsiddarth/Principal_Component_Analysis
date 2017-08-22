rm(list=ls(all=T))

#Loading "attitudes dataset in R"
data(attitude)
names(attitude)
summary(attitude)
str(attitude)
attach(attitude)

#constructing a linear regression model
model1= lm(rating ~ complaints+ privileges+learning+raises+critical+advance)

# Check the summary of the model
summary(model1)

#All Coefficients except complaints are not significant
#MOdel is significant 
#Checking the reasons 

# Correlation of the data
cor(attitude[,-1])

# Removing the target attribute for PCA
data=attitude[,-c(1)]

# Standardizing the data
library(vegan)
data = decostand(data,method = "range")

# Running a PCA and analyzing the values
pca= princomp(data)

# Summary of the PCA model
summary(pca)
#Plotting pca to show the amount of variance explained
plot(pca)

#Using first 4 principal components

data2=data.frame(rating,pca$scores[,1:4])
cor(data2[-1])

#Building the linear regression model using the PCA components
model2 = lm(rating ~ .,data=data2)
summary(model2)
