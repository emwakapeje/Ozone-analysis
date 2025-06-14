# Load dataset
data(mtcars)

# Summary statistics
summary(mtcars$mpg)

# Boxplot of MPG by number of cylinders
boxplot(mpg ~ as.factor(cyl), data = mtcars,
        col = c("lightblue", "lightgreen", "lightpink"),
        main = "MPG by Cylinder Count", xlab = "Cylinders", ylab = "Miles per Gallon")

# Correlation between MPG and weight
cor(mtcars$mpg, mtcars$wt)

# Scatter plot with regression line
plot(mtcars$wt, mtcars$mpg, main = "MPG vs Weight", xlab = "Weight", ylab = "MPG", pch = 19)
abline(lm(mpg ~ wt, data = mtcars), col = "red", lwd = 2)
