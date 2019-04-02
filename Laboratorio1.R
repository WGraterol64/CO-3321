# Laboratorio I
# Diego Pena 15-11095
# Wilfredo Graterol 15-10639

data = read.table("Mercado.txt", header = T)
modaC <- function( datos ){
       tab <- table(datos)
       return( names(tab)[tab == max(tab)] )
 }
# Pregunta 1

# Analisis de Vegetales
par( mfrow = c( 1, 3 ) )
plot( data$Vegetales, main = "Vegetal del cliente", col=c("brown", "green", "yellow", "red"))
summary(data$Vegetales)
modaC(data$Vegetales) # Papa

# Analisis de consumo
hist( data$Consumo, ylab = "Frecuencia", xlab = "Consumo (Bs.)", main = "Histograma de consumo")
boxplot( data$Consumo, ylab = "Consumo (Bs.)", main = "Boxplot de consumo")
summary(data$Consumo)
sd(data$Consumo) # 71.54961
var(data$Consumo) # 5119.347

# Analisis de la relacion entre consumo segregado por vegetales
par( mfrow = c( 1, 1) )
boxplot( split(data$Consumo, data$Vegetales), ylab = "Consumo (Bs.)", main = "Diagrama de caja de consumo", col=c("brown", "green", "yellow", "red"))
boxplot( split(data$Consumo, data$Vegetales), ylab = "Consumo (Bs.)", main = "Diagrama de caja de consumo", plot = F)

# Pregunta 2
boxplot( data$Consumo[data$Sexo == "F" & data$Fruta == "Cambur"], ylab = "Consumo", main = "Consumo de mujeres que comen cambur")
summary(data$Consumo[data$Sexo == "F" & data$Fruta == "Cambur"])
sd(data$Consumo[data$Sexo == "F" & data$Fruta == "Cambur"])
var(data$Consumo[data$Sexo == "F" & data$Fruta == "Cambur"])
boxplot( split(data$Consumo[data$Sexo == "F" & data$Fruta == "Cambur"], data$Carnico[data$Sexo == "F" & data$Fruta == "Cambur"]), ylab = "Consumo (Bs.)", main = "Mujeres que comen cambur segregadas por Carnico", col=c("brown", "pink", "yellow", "red"))
boxplot( split(data$Consumo[data$Sexo == "F" & data$Fruta == "Cambur"], data$Carnico[data$Sexo == "F" & data$Fruta == "Cambur"]), ylab = "Consumo (Bs.)", main = "Mujeres que comen cambur segregadas por Carnico", col=c("brown", "pink", "yellow", "red"), plot = F)

# Pregunta 3

length(data$Edad[data$Edad > 60 & data$Carnico == "Carne" & data$Sexo == "M"]) # Resp: 4

