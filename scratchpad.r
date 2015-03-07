# Fit a more complex linear regression -----------------------------------------
linear_regression_model_3 <- lm(iris$Petal.Length ~ iris$Petal.Width 
                                + iris$Sepal.Length
                                + iris$Sepal.Width)
print(summary(linear_regression_model_3))
# # Other useful functions 
# coefficients(fit) # model coefficients
# confint(fit, level=0.95) # CIs for model parameters 
# fitted(fit) # predicted values
# residuals(fit) # residuals
# anova(fit) # anova table 
# vcov(fit) # covariance matrix for model parameters 
# influence(fit) # regression diagnostics
# residuals(linear_regression_model_3) # Errors by data point

# # Visualize linear regression
# library(car)
# scatterplot.matrix(~iris$Petal.Width+iris$Sepal.Length+iris$Sepal.Width|iris$Petal.Length,
#                    main="Linear Regression model fits to Iris Data")

# plot(iris$Sepal.Length, 
#      iris$Sepal.Width,
#      pch=21,
#      bg=c("red","green3","blue")[unclass(iris$Species)],
#      main="Linear regression for Iris Data",
#      xlab="Sepal length",
#      ylab="Sepal width")

# abline(linear_regression_model_3, 
#        col="black")
# 
# pairs( state.x77, panel=function(x,y){
#   points(x,y)
#   abline(lm(y~x), col='red')
# })
# 
# panel=function(x,y){
#   points(x,y)
#   abline(lm(y~x), col='red')
# }
# 
# abline(lm(y~x), col='red')