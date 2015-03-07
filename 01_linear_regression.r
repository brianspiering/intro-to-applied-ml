# File description -------------------------------------------------------------
# Examples of linear regression

# Setup ------------------------------------------------------------------------
rm(list=ls()) # Delete all variables
graphics.off() # Close all open plots
cat("\014")   # Clear console

# Visualize the data -----------------------------------------------------------
pairs(iris[1:4], 
      main = "Iris Data", 
      pch = 21, 
      bg = c("red", "green3", "blue")[unclass(iris$Species)],
      lower.panel=NULL, 
      labels=c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width"), 
      font.labels=2,
      cex.labels=1.8) 

# Inspect the data
print(head(iris))

# Fit a simple linear regression -----------------------------------------------
linear_regression_model_1 <- lm(iris$Petal.Width ~ iris$Petal.Length)
print(summary(linear_regression_model_1))
cat("\ny = mx + b\n") # Linear model
# residuals(linear_regression_model_1) # Errors by data point

# Visualize linear regression
plot(iris$Petal.Length, 
     iris$Petal.Width,
     pch=21,
     bg=c("red","green3","blue")[unclass(iris$Species)],
     main="Linear Regression for Iris Data",
     xlab="Petal length",
     ylab="Petal width")

abline(lsfit(iris$Petal.Length, iris$Petal.Width)$coefficients, 
       col="black")

# Fit another simple linear regression -----------------------------------------
linear_regression_model_2 <- lm(iris$Sepal.Length ~ iris$Sepal.Width)
print(summary(linear_regression_model_2))
cat("\ny = mx + b\n") # Linear model
# residuals(linear_regression_model_2) # Errors by data point

# Visualize linear regression
plot(iris$Sepal.Length, 
     iris$Sepal.Width,
     pch=21,
     bg=c("red","green3","blue")[unclass(iris$Species)],
     main="Linear Regression for Iris Data",
     xlab="Sepal length",
     ylab="Sepal width")

abline(lsfit(iris$Sepal.Length, iris$Sepal.Width)$coefficients, 
       col="black")

# Fit a more complex linear regression -----------------------------------------
linear_regression_model_3 <- lm(iris$Petal.Width ~ iris$Petal.Length
                                + iris$Sepal.Length
                                + iris$Sepal.Width)
print(summary(linear_regression_model_3))