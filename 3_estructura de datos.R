library(tidyverse)

machos <- filter(EBV, SEXOLETRA == "M")
str(machos)
summary(EBV$SEXOLETRA)

hembras <- filter(EBV, SEXOLETRA == "F")

summary(EBV$FNACNUMERO)

year1936<-EBV %>%
  filter(FNACNUMERO %in% c(19360206:19370000))

decada1930<-EBV %>%
  filter(FNACNUMERO %in% c(19360206:19400000))
decada1940<-EBV %>%
  filter(FNACNUMERO %in% c(19400000:19500000))

#Resumen info por origen (media, desvio y n para leche) No puede calcular el desvio con un solo dato.
decada1930 %>% 
  group_by(ORI) %>% 
  summarise(LECHE_mean =  mean(LECHE),
            LECHE_sd = sd(LECHE),
            LECHE_n = length(LECHE)) 

decada1930 %>% 
  group_by(ORI) %>% 
  summarise(FNAC_min = min (FNACNUMERO),
            FNAC_max = max (FNACNUMERO),
            FNAC_mean =  mean(FNACNUMERO),
            hijos = length(FNACNUMERO)) 

forcats::fct_explicit_na
fct_explicit_na(EBV$ISOM)

library(forcats)

int_gen1930<-decada1930 %>% 
  group_by(fct_explicit_na(ISOP)) %>% 
  summarise(FNAC_min = min (FNACNUMERO),
            FNAC_mean = mean (FNACNUMERO),
            FNAC_max = max (FNACNUMERO),
            hijos = length(FNACNUMERO))

#Para pasar el conjunto de datos de R a txt:
write.table(EBV, "C:/Users/Ana/Desktop/tesis FG/R/EBV.txt", sep = "\t", col.names = TRUE, row.names = FALSE, quote = FALSE, 
            na = "NA")
