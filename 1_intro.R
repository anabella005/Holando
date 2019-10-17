str(EBV)
colnames(EBV)[15]<- "PP"
colnames(EBV)[3]<-"ISOM"
colnames(EBV)[4]<-"FNACNUMERO"
colnames(EBV)[5]<-"SEXOLETRA"
colnames(EBV)[6]<-"ORI"
colnames(EBV)[7]<-"TIENELAC"
colnames(EBV)[8]<-"HIJASLECDIR"
colnames(EBV)[9]<-"LECHE"
colnames(EBV)[10]<-"GRASA"
colnames(EBV)[11]<-"PGRASA"
colnames(EBV)[12]<-"PROT"
colnames(EBV)[13]<-"PPROT"
colnames(EBV)[14]<-"CONFP"
str(EBV)

EBV<- within(EBV, {
  PP <- NULL
})

