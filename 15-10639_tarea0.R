table = read.table("desayuno.txt",header=T)
# Problema numero 1
length(table$sexo[table$sexo=="mujer"]) # 16 mujeres
length(table$sexo[table$sexo=="hombre"]) # 24 hombres

# Problema numero 2
mean(table$consumo) # promedio = 100375
mean(table$consumo[table$sexo == "mujer"]) # promedio en mujeres = 91562.5
mean(table$consumo[table$sexo == "hombre"]) #promedio en hombres = 106250

# Pregunta 3
sd(table$consumo[table$sexo == "mujer"]) #37404.04
sd(table$consumo[table$sexo == "hombre"]) #40626.88

# Pregunta 4
length(subset(table$sexo, table$sexo == "mujer" & table$Bebida == "cafe")) # mujeres que beben cafe = 12
length(subset(table$sexo, table$sexo == "hombre" & table$Bebida == "cafe"))# hombres que beben cafe = 12

# Pregunta 5
length(subset(table$sexo, table$sexo == "mujer" & table$Bebida == "cafe" & table$Consume_empanada == F)) # mujeres que beben cafe y comen arepas = 6
length(subset(table$sexo, table$sexo == "hombre" & table$Bebida == "cafe" & table$Consume_empanada == F)) # hombres que beben cafe y comen arepas = 6