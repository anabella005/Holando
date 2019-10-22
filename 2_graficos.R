#Algunos graficos descriptivos:

library(ggplot2)
library(tidyverse)

EBV %>% 
  ggplot(aes(x=FNACNUMERO, y=LECHE))

hh <- EBV[1:200000,]

str(hh)

hh %>% 
  ggplot(aes(x=FNACNUMERO, y=LECHE))+
  geom_point(aes(color = SEXOLETRA))


hh %>%
  ggplot(aes(LECHE, fill=SEXOLETRA))+
  geom_histogram()+
  guides(fill=FALSE)

hh %>%
  ggplot(aes(LECHE, fill= SEXOLETRA))+
  geom_density(alpha=0.7)
