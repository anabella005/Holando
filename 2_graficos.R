#Algunos graficos descriptivos:

library(ggplot2)
library(tidyverse)

EBV %>% 
  ggplot(aes(x=FNACNUMERO, y=LECHE))

str(hh)

primeros %>% 
  ggplot(aes(x=FNACNUMERO, y=CONFP))+
  geom_point(aes(color = SEXOLETRA))

EBV %>%
  ggplot(aes(LECHE, fill=SEXOLETRA))+
  geom_histogram()+
  guides(fill=FALSE)#quizas se podría hacer por décadas y comparar

EBV %>%
  ggplot(aes(LECHE, fill= SEXOLETRA))+
  geom_density(alpha=0.7)#ver la interpretación

EBV %>% 
  ggplot(aes(x=FNACNUMERO, y=CONFP))+
  geom_point(aes(color = SEXOLETRA))

primeros<-EBV[1:10000,]
str(primeros)

library(tidyverse)
min(primeros$LECHE)


machos<- EBV[,EBV$SEXOLETRA=="M"]
str(machos)

machos <- subset(EBV, subset = M)
summary(EBV$ISOM)

library()


primeros %>% 
  ggplot(aes(x=FNACNUMERO, y=ORI))+
  geom_point(aes(color = SEXOLETRA))+
  scale_size("LECHE")

machos%>%
ggplot(aes(x=FNACNUMERO, y=ORI)) +
   geom_count() +
  scale_size_area()

hembras%>%
  ggplot(aes(x=FNACNUMERO, y=ORI)) +
  geom_count() +
  scale_size_area()


summary(EBV$ORI)

decada1940%>%
  ggplot(aes(x=FNACNUMERO, y=LECHE)) +
  geom_point(aes(color = SEXOLETRA), shape=1, size=3) 
