# File description -------------------------------------------------------------
# Simple example of decision tree

# Setup ------------------------------------------------------------------------
rm(list=ls()) # Delete all variables
cat("\014")   # Clear console

# Fit decision tree ------------------------------------------------------------
# Get decision tree package
require("party") 

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
print(unique(iris$Species))

# Fit a decision tree
iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                    data=iris)

# Visualize a decision tree
plot(iris_ctree,
     type="simple",
     main="Decision Tree of Iris Data by Species")
