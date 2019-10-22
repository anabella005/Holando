str(EBV)
colnames(EBV)[1]<-"ISO" # nombre del registro en Argentina
colnames(EBV)[2]<-"ISOP" #nombre del registro del padre
colnames(EBV)[3]<-"ISOM" #nombre del registro de la madre
colnames(EBV)[4]<-"FNACNUMERO" #fecha de nacimiento
colnames(EBV)[5]<-"SEXOLETRA" #sexo
colnames(EBV)[6]<-"ORI" #origen del registro internacional del animal
colnames(EBV)[7]<-"TIENELAC" #1 si la vaca tuvo lactancia para evaluacion genetica
colnames(EBV)[8]<-"HIJASLECDIR" #hijas del  macho validas para evaluacion genetica
colnames(EBV)[9]<-"LECHE" #valor genetico leche
colnames(EBV)[10]<-"GRASA" #idem grasa
colnames(EBV)[11]<-"PGRASA" #porcentaje grasa
colnames(EBV)[12]<-"PROT" #proteina
colnames(EBV)[13]<-"PPROT" #porcentaje proteina
colnames(EBV)[14]<-"CONFP"#confiabilidad del valor genético
str(EBV)


