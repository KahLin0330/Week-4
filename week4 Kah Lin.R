titanic <- data.frame(Titanic)
as.data.frame(Titanic)

head(titanic)

install.packages("dplyr")

library(dplyr)
titanic %>% select(Survived,Sex)

df1<-titanic %>% select(Survived,Sex)
print(df1)

df2=subset(df1,select= -c(Sex))
print(df2)

titanic%>%rename(Gender = Sex)

df3=titanic%>%rename(Gender = Sex)

df3%>% filter(Gender== "Male")

df3%>% arrange(Gender)

df3%>% summarise(Freq)

df3%>% filter(Gender== "Female")

df4<-data.frame(df4%>% filter(Gender== "Male"))
df5<-data.frame(df5%>% filter(Gender== "Female"))
bind_rows(df4,df5)
