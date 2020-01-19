#CE 1 
#Team FSV

# This script include the recodes for the whole analysis: 
#- creating the 3 new datasets
#- filtering only Swiss observations
#- creating the new variable `pol_pos`
#- selecting only the variable we are interested in 
#- filtering only the election years we are interested in
#- omitting NA
#- exporting them


# recoding the first dataset: ------------------------------------------

# load the package:
library(dplyr)

# select only Switzerland observation: 
data_pg <- filter(
  dat,
  country_name == "Switzerland"
)

<<<<<<< HEAD
=======
# recoding the new variable `pol_pos` in 3 categories (left, center and right): 
>>>>>>> 061309be6a88cafd80a40a00752397975c17a048
data_pg$pol_pos <- cut(data_pg$left_right, 
<<<<<<< HEAD
                       breaks = c(0, 3.34, 6.67, 10), 
                       labels = c("left", "center", "right" ),
                       right = F)
<<<<<<< HEAD
=======
                          breaks = c(0, 3.34, 6.67, 10), 
                          labels = c("left", "center", "right" ),
                          right = F)
>>>>>>> ae064b4be5395b196114ab1ea97ca445fb7ecffd
=======
<<<<<<< HEAD
data_pg <- na.omit(data) 
=======
>>>>>>> 9e10b8346b93ff1124730a67af8954c7a23efab9

# selecting only the variables we needed for the analysis: 
data_pg <- select (data_pg, country_name, election_date, vote_share, party_name_short, left_right, pol_pos)

# omitting missing values: 
data_pg <- na.omit(data_pg)

# checking that the var `election_date` is a date variable:
data_pg$election_date <- as.Date(data_pg$election_date)

#filtering only the years we are interested in: in this case 2007-2011-2015-2019
data_pg <- filter(data_pg, 
                  election_date > "2003-10-19")

#exporting the new dataset:
library(rio)
export(data_pg, "data_pg.dta")


# recoding the second dataset: ------------------------------------------

# select only Switzerland observation: 
data_2 <-  filter(
  dat,
  country_name == "Switzerland"
)

# recoding the new variable `pol_pos` in 3 categories (left, center and right): 
data_2$pol_pos <- cut(data_2$left_right, 
<<<<<<< HEAD
                      breaks = c(0, 3.34, 6.67, 10), 
                      labels = c("left", "center", "right" ),
                      right = F)
=======
                       breaks = c(0, 3.34, 6.67, 10), 
                       labels = c("left", "center", "right" ),
                       right = F)
>>>>>>> ae064b4be5395b196114ab1ea97ca445fb7ecffd

# selecting only the variables we needed for the analysis: 
data_2 <- select (data_2, country_name, election_date, vote_share, party_name_short, left_right, pol_pos)

# omitting missing values: 
data_2 <- na.omit(data_2)

# checking that the var `election_date` is a date variable:
data_2$election_date <- as.Date(data_2$election_date)

#filtering only the years we are interested in: in this case 2003-1999-1995-1991
data_2 <- filter(data_2, 
                 election_date < "2007-10-21" & election_date >"1987-10-18")


#exporting the new dataset:
export(data_2, "data_2.dta")


# recoding the third dataset: ------------------------------------------

# select only Switzerland observation: 
data_3 <-  filter(
  dat,
  country_name == "Switzerland"
)

# recoding the new variable `pol_pos` in 3 categories (left, center and right): 
data_3$pol_pos <- cut(data_3$left_right, 
                      breaks = c(0, 3.34, 6.67, 10), 
                      labels = c("left", "center", "right" ),
                      right = F)

# selecting only the variables we needed for the analysis: 
data_3 <- select (data_3, country_name, election_date, vote_share, party_name_short, left_right, pol_pos)

# omitting missing values: 
data_3 <- na.omit(data_3)

# checking that the var `election_date` is a date variable:
data_3$election_date <- as.Date(data_3$election_date)

#filtering only the years we are interested in: in this case 1987-1983-1979-1975
data_3 <- filter(data_3, 
                 election_date < "1991-10-20" & election_date >"1971-10-31")

#exporting the new dataset:
export(data_3, "data_3.dta")

