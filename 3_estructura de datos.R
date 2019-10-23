

machos <- filter(EBV, SEXOLETRA == "M")
str(machos)
summary(EBV$SEXOLETRA)

hembras <- filter(EBV, SEXOLETRA == "F")
