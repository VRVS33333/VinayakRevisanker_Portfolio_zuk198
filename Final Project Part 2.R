<<<<<<< HEAD
# Load necessary libraries
library(tidyverse)
library(hms)

# Read the CSV file
file_path <- "Methane in the Furnance.csv"
df <- read_csv(file_path)



# Convert 'obs' column to time format
df <- df %>% mutate(obs = hms::as_hms(obs))

# Check for missing values
missing_values <- colSums(is.na(df))
print(missing_values)

# Handle missing values if any
# Example: Fill missing values with mean
df <- df %>% mutate(
  co2 = ifelse(is.na(co2), mean(co2, na.rm = TRUE), co2),
  methane = ifelse(is.na(methane), mean(methane, na.rm = TRUE), methane)
)







# Summary statistics
co2_summary <- summary(df$co2)
methane_summary <- summary(df$methane)

# Print summary statistics
print(co2_summary)
print(methane_summary)



co2_summary <- summary(df$co2)
methane_summary <- summary(df$methane)

print(co2_summary)
print(methane_summary)


# Plot CO2 levels over time
ggplot(df, aes(x = obs, y = co2)) +
  geom_line(color = "blue") +
  labs(title = "CO2 Levels Over Time", x = "Time", y = "CO2 Level") +
  theme_minimal()

# Plot methane levels over time
ggplot(df, aes(x = obs, y = methane)) +
  geom_line(color = "orange") +
  labs(title = "Methane Levels Over Time", x = "Time", y = "Methane Level") +
  theme_minimal()


# Calculate the correlation between CO2 and methane levels
correlation <- cor(df$co2, df$methane, use = "complete.obs")
print(paste("Correlation between CO2 and methane levels:", correlation))







# Calculate the correlation between CO2 and methane levels
correlation <- cor(df$co2, df$methane, use = "complete.obs")
print(paste("Correlation between CO2 and methane levels:", correlation))

# Save the correlation result
write(paste("Correlation between CO2 and methane levels:", correlation), 
      file = "results/analysis_summary.txt")

# Convert 'obs' column to time format
df <- df %>% mutate(obs = hms::as_hms(obs))

# Check for missing values
missing_values <- colSums(is.na(df))
print(missing_values)

# Handle missing values if any
# Example: Fill missing values with mean
df <- df %>% mutate(
  co2 = ifelse(is.na(co2), mean(co2, na.rm = TRUE), co2),
  methane = ifelse(is.na(methane), mean(methane, na.rm = TRUE), methane)
)


# Discussion

## Summary and Interpretation
###_The analysis showed that both CO2 and methane levels fluctuate over time. The correlation between the two gases will provide insight into their relationship in the furnace environment._

## Strengths and Limitations
###_Discuss what you perceive as strengths and limitations of your analysis._

## Conclusions
###_Understanding the behavior of methane and carbon dioxide in furnaces can help in developing better control strategies to reduce emissions. Further research with more context-specific data is recommended._


=======
# Load necessary libraries
library(tidyverse)
library(hms)

# Read the CSV file
file_path <- "Methane in the Furnance.csv"
df <- read_csv(file_path)



# Convert 'obs' column to time format
df <- df %>% mutate(obs = hms::as_hms(obs))

# Check for missing values
missing_values <- colSums(is.na(df))
print(missing_values)

# Handle missing values if any
# Example: Fill missing values with mean
df <- df %>% mutate(
  co2 = ifelse(is.na(co2), mean(co2, na.rm = TRUE), co2),
  methane = ifelse(is.na(methane), mean(methane, na.rm = TRUE), methane)
)







# Summary statistics
co2_summary <- summary(df$co2)
methane_summary <- summary(df$methane)

# Print summary statistics
print(co2_summary)
print(methane_summary)



co2_summary <- summary(df$co2)
methane_summary <- summary(df$methane)

print(co2_summary)
print(methane_summary)


# Plot CO2 levels over time
ggplot(df, aes(x = obs, y = co2)) +
  geom_line(color = "blue") +
  labs(title = "CO2 Levels Over Time", x = "Time", y = "CO2 Level") +
  theme_minimal()

# Plot methane levels over time
ggplot(df, aes(x = obs, y = methane)) +
  geom_line(color = "orange") +
  labs(title = "Methane Levels Over Time", x = "Time", y = "Methane Level") +
  theme_minimal()


# Calculate the correlation between CO2 and methane levels
correlation <- cor(df$co2, df$methane, use = "complete.obs")
print(paste("Correlation between CO2 and methane levels:", correlation))







# Calculate the correlation between CO2 and methane levels
correlation <- cor(df$co2, df$methane, use = "complete.obs")
print(paste("Correlation between CO2 and methane levels:", correlation))

# Save the correlation result
write(paste("Correlation between CO2 and methane levels:", correlation), 
      file = "results/analysis_summary.txt")

# Convert 'obs' column to time format
df <- df %>% mutate(obs = hms::as_hms(obs))

# Check for missing values
missing_values <- colSums(is.na(df))
print(missing_values)

# Handle missing values if any
# Example: Fill missing values with mean
df <- df %>% mutate(
  co2 = ifelse(is.na(co2), mean(co2, na.rm = TRUE), co2),
  methane = ifelse(is.na(methane), mean(methane, na.rm = TRUE), methane)
)


# Discussion

## Summary and Interpretation
###_The analysis showed that both CO2 and methane levels fluctuate over time. The correlation between the two gases will provide insight into their relationship in the furnace environment._

## Strengths and Limitations
###_Discuss what you perceive as strengths and limitations of your analysis._

## Conclusions
###_Understanding the behavior of methane and carbon dioxide in furnaces can help in developing better control strategies to reduce emissions. Further research with more context-specific data is recommended._


>>>>>>> 1ac1f4fdaeddd174a41c07ee2b56445bb3f034e4
