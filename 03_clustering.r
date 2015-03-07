# File description -------------------------------------------------------------
# Simple example of clustering

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
print(unique(iris$Species))

# Find clusters ----------------------------------------------------------------
# Make copy of iris
iris_no_labels <- iris

# Remove category labels
iris_no_labels$Species <- NULL

# Apply kmeans to iris
n_clusters <- 3
kc <- kmeans(iris_no_labels, 
             n_clusters)
print(kc) # Inspect the clusters

# Visualize the clusters
plot(iris[c("Sepal.Length", "Sepal.Width")], 
     col=kc$cluster)
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], 
       col=1:3, 
       pch=8,
       cex=2)