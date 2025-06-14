# Load necessary library
library(ggplot2)

# View structure of the dataset
str(airquality)

# Basic summary of the dataset
summary(airquality)

# Handle missing values (optional: remove rows with NA)
airquality_clean <- na.omit(airquality)

# Plot 1: Histogram of Ozone levels
ggplot(airquality_clean, aes(x = Ozone)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Ozone Levels",
       x = "Ozone (ppb)",
       y = "Frequency") +
  theme_minimal()

# Plot 2: Time Series plot of Ozone over days (by Month)
ggplot(airquality_clean, aes(x = Day, y = Ozone, color = factor(Month))) +
  geom_line() +
  facet_wrap(~Month, scales = "free_x") +
  labs(title = "Daily Ozone Levels by Month",
       x = "Day of the Month",
       y = "Ozone (ppb)",
       color = "Month") +
  theme_minimal()

# Plot 3: Boxplot of Ozone by Month
ggplot(airquality_clean, aes(x = factor(Month), y = Ozone)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Ozone Levels by Month",
       x = "Month",
       y = "Ozone (ppb)") +
  theme_minimal()
