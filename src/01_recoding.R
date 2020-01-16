library(dplyr)
data_pg <- filter(
  data,
  country_name %in% ("Switzerland"), 
)

data_pg$pol_pos <- cut(data_pg$left_right, 
                          breaks = c(0, 3.34, 6.67, 10), 
                          labels = c("left", "center", "right" ),
                          right = F)