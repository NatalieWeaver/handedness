library(googlesheets4)
library(dplyr)

# Load and prep data

data_url <- "https://docs.google.com/spreadsheets/d/1IcrQzTblnN7eJNUcLz7tJdbn7gb59pH5OMblraBJocc/edit#gid=736825984"

confusion <- googlesheets4::read_sheet(
  data_url,
  sheet = "confusion"
)

handedness <- googlesheets4::read_sheet(
  data_url,
  sheet = "handedness"
)

data <- confusion %>%
  dplyr::inner_join(handedness, by = "handle") %>%
  dplyr::filter(handedness %in% c("left", "right"))

# Run chi-square test for statistical independence

chisq_test <- chisq.test(data$handedness, data$has_difficulty, correct = FALSE)
chisq_test$p.value  # large p-value --> fail to reject null

