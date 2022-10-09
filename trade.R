library(tidyverse)
library(readxl)
library(patchwork)
heh<-read_csv('../../Users/imedk/onedrive/CIPS/RCEP/data/total.csv') %>%
  pivot_longer(!`time`,names_to = "month",values_to = "trade")

heh$mo<-lubridate::my(heh$month)

negara<-unique(heh$time)

heh%>%filter(time==negara[1])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[1])+
heh%>%filter(time==negara[2])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[2])+
  heh%>%filter(time==negara[3])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[3])+
  heh%>%filter(time==negara[4])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[4])+
  heh%>%filter(time==negara[5])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[5])+
  heh%>%filter(time==negara[6])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[6])+
  heh%>%filter(time==negara[7])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[7])+
heh%>%filter(time==negara[8])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[8])+
  heh%>%filter(time==negara[9])%>%ggplot(aes(x=mo,y=trade))+geom_line()+scale_x_date(date_labels = "%b%y")+
  geom_vline(xintercept=lubridate::my("jan-22"))+theme_minimal()+ggtitle(negara[9])+
  plot_annotation(caption = 'Source: OECD')

ggsave("trade.png")
