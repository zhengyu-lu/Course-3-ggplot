install.packages("tidyverse")
library(tidyverse)

#National Parks in California
ca <- read_csv("ca.csv")
#Acadia National Park
acadia <- read_csv("acadia.csv")
#Southeast US National Parks
se <- read_csv("se.csv")
#2016 Visitation for all Pacific West National Parks
visit_16 <- read_csv("visit_16.csv")
#All Nationally designated sites in Massachusetts
ggplot(data=se)+
  geom_bar(aes(x=state))


ggplot(data = acadia) +
  geom_point(aes(x = year, y = visitors)) +
  geom_line(aes(x = year, y = visitors)) +
  geom_smooth(aes(x = year, y = visitors)) +
  labs(title = "Acadia National Park Visitation",
       y = "Visitation",
       x = "Year") +
  theme_bw()

visit_16

ggplot(data =visit_16)+
  geom_bar(aes(x=state))


ggplot(data = se) + 
  geom_point(aes(x = year, y = visitors, color = state)) + 
  labs(x = "Year", y = "Visitation", title = "Southeast States National Park Visitation") + 
  theme_light() + 
  theme(legend.title = element_blank(), axis.text.x = element_text(angle = 45, hjust = 1, size = 14))

ggplot(se, aes(x = park_name, y = visitors)) + 
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


my_plot <- ggplot(data = visit_16, aes(x = state, y=visitors, fill=park_name))+
  geom_bar(stat = "identity", position="dodge")+
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 7))

ggsave("figure.png", my_plot, width=15, height = 10)

t <- read_csv("https://raw.githubusercontent.com/zhengyu-lu/data-science-training/master/data/ca.csv")
t
