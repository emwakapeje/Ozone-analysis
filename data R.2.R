# Install required package if not already installed
install.packages("ggcorrplot")  # only run once
library(ggcorrplot)

# Clean data: remove rows with missing values
airquality_clean <- na.omit(airquality)


#Install and load the package
install.packages("corrplot")  # only run once
library(corrplot)

# Compute correlation matrix
corr_matrix <- cor(na.omit(airquality))

# Visualize
corrplot(corr_matrix, 
         method = "color", 
         type = "lower", 
         addCoef.col = "black",
         tl.col = "black", 
         tl.srt = 45,
         col = colorRampPalette(c("blue", "white", "red"))(200),
         title = "Correlation Plot: airquality",
         mar = c(0,0,1,0))


# Plot pairwise scatterplots for all numeric variables
pairs(airquality_clean,
      main = "Pairwise Scatterplots: airquality dataset",
      pch = 19,           # solid circle points
      col = "darkblue",   # color of the points
      cex = 0.6)          # point size

