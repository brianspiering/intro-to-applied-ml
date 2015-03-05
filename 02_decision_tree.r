# File description -------------------------------------------------------------
# Simple example of decision tree

# Setup ------------------------------------------------------------------------
rm(list=ls()) # Delete all variables
cat("\014")   # Clear console

# Fit decision tree -----------------------------------------------------------
# Get decision tree package
require("party") 

# Visualize the data
plot(iris$Petal.Length, iris$Petal.Width, 
     pch=21,
     bg=c("red","green3","blue")[unclass(iris$Species)], 
     main="Manadotory Iris Data")

# Inspect the data
print(head(iris))
print(unique(iris$Species))

# Fit a decision tree
iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                    data=iris)

# Visualize a decision tree
plot(iris_ctree,
     type="simple",
     main="Decision Tree of Iris Data by Species")
