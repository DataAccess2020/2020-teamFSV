library(dplyr)
data_pg <- filter(
  data,
  country_name %in% ("Switzerland"), 
)

<<<<<<< HEAD

=======
data_pg$pol_pos <- cut(data_pg$left_right, 
                          breaks = c(0, 3.34, 6.67, 10), 
                          labels = c("left", "center", "right" ),
                          right = F)
data_pg <- na.omit(data) 
>>>>>>> b879b0da1ac2fda1be0ade3fa952b5abb27a6b1a
