#this the recoding script

library(dplyr)
#here we are selecting only Switzerland observation and removing the missing values: 

data_pg <- filter(
  dat,
  country_name == "Switzerland"
)

# Here we are recoding the new variable `pol_pos` in 3 categories (left, center and right): 
data_pg$pol_pos <- cut(data_pg$left_right, 
                          breaks = c(0, 3.34, 6.67, 10), 
                          labels = c("left", "center", "right" ),
                          right = F)

# Here we selected only the variables we needed for the analysis, to clean a bit the dataset: 
data_pg <- select (data_pg, country_name, election_date, vote_share, party_name_short, left_right, pol_pos)

data_pg <- na.omit(data_pg)

data_pg$election_date <- as.Date(data_pg$election_date)

#filtering only the years we are interested in
data_pg <- filter(data_pg, 
                  election_date > "2003-10-19")

#exporting the new dataset
library(rio)
export(data_pg, "data_pg.dta")

















