#this the recoding script
####recoding 1
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

####recoding 2:

#we have created a second dataset to check other years
data_2 <-  filter(
  dat,
  country_name == "Switzerland"
)

data_2$pol_pos <- cut(data_2$left_right, 
                       breaks = c(0, 3.34, 6.67, 10), 
                       labels = c("left", "center", "right" ),
                       right = F)

# Here we selected only the variables we needed for the analysis, to clean a bit the dataset: 
data_2 <- select (data_2, country_name, election_date, vote_share, party_name_short, left_right, pol_pos)

data_2 <- na.omit(data_2)

data_2$election_date <- as.Date(data_2$election_date)

#filtering only the years we are interested in: in this case 2003-1999-1995-1991
data_2 <- filter(data_2, 
                  election_date < "2007-10-21" & election_date >"1987-10-18")

####recoding 3:
####recoding 2:

#we have created a second dataset to check other years
data_3 <-  filter(
  dat,
  country_name == "Switzerland"
)

data_3$pol_pos <- cut(data_3$left_right, 
                      breaks = c(0, 3.34, 6.67, 10), 
                      labels = c("left", "center", "right" ),
                      right = F)

# Here we selected only the variables we needed for the analysis, to clean a bit the dataset: 
data_3 <- select (data_3, country_name, election_date, vote_share, party_name_short, left_right, pol_pos)

data_3 <- na.omit(data_3)

data_3$election_date <- as.Date(data_3$election_date)

#filtering only the years we are interested in: in this case 1987-1983-1979-1975
data_3 <- filter(data_3, 
                 election_date < "1991-10-20" & election_date >"1971-10-31")













