# Dimensionality Reduction  
There are various techniques for dimensionality reduction such as Linear Discriminant Analysis,checking for correlation factors, using features with high variable importance from random forests and many more.Here I implemented one such technique called Principal component analysis in R. 

## Dataset
We use the attitude data set in R.

## Principal Component Analysis
Principal Component analysis or PCA tries to create new dimensions as a linear combination of existing features.These new dimensions are created such that they explain maximum variance in the data set.PCA works bst on numeric data and the important pre processing step is to normalize the features before performing PCA.  
  
  The number of principal components are selected such that they explain maximum variance. Plots such as scree plots help us in identifying the number of reduced features that can be considered.


