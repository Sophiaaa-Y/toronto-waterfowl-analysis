#### Preamble ####
# Purpose: Tests on the cleaned dataset of Toronto beaches observations to check
# the validity.
# Author: Shuangyuan Yang
# Date: 25 September 2024
# Contact: shuangyuan.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run the files "01-download_data.R" and "02-data_cleaning.R".
# Any other information needed? None.


#### Workspace setup ####

# install.packages("tidyverse")
library(tidyverse)

#### Test data ####

# Loading the cleaned dataset
Observations_cleaned_data <- read_csv("data/analysis_data/observations_cleaned_data.csv")

# Checking the class of some of the columns
Observations_cleaned_data$`Wind speed in km/h` |> class() == "numeric"
Observations_cleaned_data$`Waterfowl population` |> class() == "numeric"
Observations_cleaned_data$`Turbidity of water (NTUs)` |> class() == "numeric"
Observations_cleaned_data$`Wave Action` |> class() == "character"

# Checking that the minimum value in the ID column is at least 1
Observations_cleaned_data$ID |> min() >= 1

# Checking that the minimum wind speed is at least 0
Observations_cleaned_data$`Wind speed in km/h` |> min() >= 0

# Checking that the minimum waterfowl population is at least 0
Observations_cleaned_data$`Waterfowl population` |> min() >= 0

# Checking that the minimum turbidity is at least 0
Observations_cleaned_data$`Turbidity of water (NTUs)` |> min() >= 0

# Checking the range of the wind speed
Observations_cleaned_data$`Wind speed in km/h` |>
  range()

# Checking the range of the waterfowl population
Observations_cleaned_data$`Waterfowl population` |>
  range()

# Checking the range of the water turbidity
Observations_cleaned_data$`Turbidity of water (NTUs)` |>
  range()

# Checking that only four wave action types
Observations_cleaned_data$`Wave Action` |>
  unique() |>
  length() == 4

# Checking the only four types of wave actions are high, moderate, low, and none.
Observations_cleaned_data$`Wave Action` |>
  unique() |>
  sort() == sort(c("High", "Moderate", "Low", "None"))
