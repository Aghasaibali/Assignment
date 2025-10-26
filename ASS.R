library(ggplot2)
ali <- read.csv("ali.csv")
View(ali)


# Scatter Plot: Age vs Height (colored by Gender)

ggplot(data = ali) +
  geom_point(mapping = aes(x = Age, y = Height_cm, color = Gender)) +
  labs(
    title = "Age vs Height by Gender",
    x = "Age (years)",
    y = "Height (cm)",
    color = "Gender"
  ) +
  theme_minimal()


# Boxplot: Height by Sport Participation


ggplot(data = ali) +
  geom_boxplot(mapping = aes(x = Sport, y = Height_cm, fill = Sport)) +
  labs(
    title = "Height Comparison by Sport Participation",
    x = "Plays Sport?",
    y = "Height (cm)",
    fill = "Sport"
  ) +
  theme_minimal()


# Bar Chart: Satisfaction vs Delivery Satisfaction

ggplot(data = ali) +
  geom_bar(mapping = aes(x = Satisfaction, fill = Delivery_Satisfaction), position = "dodge") +
  labs(
    title = "Customer Satisfaction vs Delivery Satisfaction",
    x = "Overall Satisfaction",
    y = "Count",
    fill = "Delivery Satisfaction"
  ) +
  theme_minimal()


# Faceted Scatter Plot: Age vs Height by Sport

ggplot(data = ali) +
  geom_point(mapping = aes(x = Age, y = Height_cm, color = Gender)) +
  facet_wrap(~ Sport) +
  labs(
    title = "Age vs Height by Sport Participation and Gender",
    x = "Age (years)",
    y = "Height (cm)",
    color = "Gender"
  ) +
  theme_minimal()


