#Caso 2

# Definimos los estratos

estrato1 <- 1:50 # Personas menores a 30 años
estrato2 <- 51:100 # Personas de 30 años o mayores

#Muestras aleatorias

muestra_estrato1 <- sample(estrato1, size = 20, replace= FALSE)
muestra_estrato2 <- sample(estrato2, size = 20, replace= FALSE)

#Mostar por separado la selección

cat("Menores de 30:\n")
print(muestra_estrato1)

cat("30 años o Mayores:\n")
print(muestra_estrato2)

#Combinamos muestras

muestratotal <-c(muestra_estrato1, muestra_estrato2)
#Imprimimos el resultado final.
print(muestratotal)

# El resultado seria correspondiente a Muestreo Estratificado