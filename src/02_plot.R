# plotting vote_share and pol_pos in the 4 years selected: 

library(ggplot2)


ggplot(data=data_pg, aes(x=pol_pos, y=vote_share, fill=pol_pos)) +
  geom_bar(position = position_dodge(), stat="identity")+
  facet_wrap(~election_date)   +         
  scale_fill_brewer(palette="Paired") +
  geom_text(aes(label=vote_share, group = pol_pos), vjust=-.5, color="black",
            position = position_dodge(width = 10), size=2.5) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 6))

