# File description -------------------------------------------------------------
# Simple example of clustering

# Setup ------------------------------------------------------------------------
rm(list=ls()) # Delete all variables
cat("\014")   # Clear console

# Find clusters ----------------------------------------------------------------

# Make copy of iris
iris_no_labels <- iris

# Remove category labels
iris_no_labels$Species <- NULL

# Apply kmeans to iris
n_clusters <- 3
kc <- kmeans(iris_no_labels, n_clusters)
# print(kc)

# Visualize the clusters
plot(iris[c("Sepal.Length", "Sepal.Width")], 
     col=kc$cluster)
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], 
       col=1:3, 
       pch=8,
       cex=2)