# File description -------------------------------------------------------------
# Simple example of linear regression

# Setup ------------------------------------------------------------------------
rm(list=ls()) # Delete all variables
cat("\014")   # Clear console

# Fit linear regession ---------------------------------------------------------
# Visualize the data
pairs(iris[1:4], 
      main = "Anderson's Iris Data -- 3 species", 
      pch = 21, 
      bg = c("red", "green3", "blue")[unclass(iris$Species)], lower.panel=NULL, 
      labels=c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width"), 
      font.labels=2,
      cex.labels=2.5) 

# Inspect the data
print(head(iris))

# Look at linear coefficents
cat("\ny = mx + b\n")
print(lsfit(iris$Petal.Length, iris$Petal.Width)$coefficients)

# Visualize linear regression
plot(iris$Petal.Length, 
     iris$Petal.Width,
     pch=21,
     bg=c("red","green3","blue")[unclass(iris$Species)],
     main="Edgar Anderson's Iris Data",
     xlab="Petal length",
     ylab="Petal width")

abline(lsfit(iris$Petal.Length, iris$Petal.Width)$coefficients, col="black")