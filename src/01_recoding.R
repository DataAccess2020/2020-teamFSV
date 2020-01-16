library(dplyr)
rec_2018 <- filter(
  data_2018,
  country_name %in% ("Switzerland"), 
)

rec_2015 <- filter(
  data_2015,
  country_name %in% ("Switzerland"), 
)
