#CE 1 
#Team FSV


# This script include the creation of the plots: 
#- plot 1: years (2007-2011-2015-2019)
#- plot 2: years (1991-1995-1999-2003)
#- plot 3: years (1975-1979-1983-1987)

#Creating the plots:-------------------------------------------

# load the package:
library(ggplot2)

#PLOT 1: years (2007-2011-2015-2019)

ggplot(data=data_pg, aes(x=pol_pos, y=vote_share, fill=pol_pos)) +
  geom_bar(position = position_dodge(), stat="identity")+
  facet_wrap(~election_date)   +         
  scale_fill_manual(values = c("red3", "seagreen", "steelblue4")) +
  theme(axis.text.x = element_text(angle = 0, hjust = 1, size = 10)) +
  labs( x= "Political position",
        y = "Percentages of vote",
        title = "Switzerland elections: 2007-2011-2015-2019",
        col= "black")

# PLOT 2: years (1991-1995-1999-2003)

ggplot(data=data_2, aes(x=pol_pos, y=vote_share, fill=pol_pos)) +
  geom_bar(position = position_dodge(), stat="identity")+
  facet_wrap(~election_date)   +         
  scale_fill_manual(values = c("red3", "seagreen", "steelblue4")) +
  theme(axis.text.x = element_text(angle = 0, hjust = 1, size = 10)) +
  labs( x= "Political position",
        y = "Percentages of vote",
        title = "Switzerland elections: 1991-1995-1999-2003",
        col= "black")

#PLOT 3: years (1975-1979-1983-1987)

ggplot(data=data_3, aes(x=pol_pos, y=vote_share, fill=pol_pos)) +
  geom_bar(position = position_dodge(), stat="identity")+
  facet_wrap(~election_date)   +         
  scale_fill_manual(values = c("red3", "seagreen", "steelblue4")) +
  theme(axis.text.x = element_text(angle = 0, hjust = 1, size = 10)) +
  labs( x= "Political position",
        y = "Percentages of vote",
        title = "Switzerland elections: 1975-1979-1983-1987",
        col= "black")
