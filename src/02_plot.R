# plotting vote_share and pol_pos in the 4 years selected: 

library(ggplot2)


ggplot(data=data_pg, aes(x=pol_pos, y=vote_share, fill=pol_pos)) +
  geom_bar(position = position_dodge(), stat="identity")+
  facet_wrap(~election_date)   +         
  scale_fill_brewer(palette="Set1") +
  theme(axis.text.x = element_text(angle = 0, hjust = 1, size = 10)) +
  labs( x= "Political position",
        y = "Percentages of vote",
        title = "Switzerland elections results",
        col= "black")

