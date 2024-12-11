#Caso 3

# Definimos los estratos

hombres <- 1:40 # Registro de 40 hombres
mujeres <-41:100 # Registro de 60 mujeres 

# Muestra aleatorias

muestra_hombres <- sample(hombres, size = 4, replace = FALSE) # Hombres sera N=4
muestra_mujeres <- sample(mujeres, size = 6, replace = FALSE) # Mujeres sera N=6

#Combinamos las muestras

muestratotal <- c(muestra_hombres, muestra_mujeres)

#Mostar por separado la selección

cat("Hombres seleccionados:\n")
print(muestra_hombres)

cat("Mujeres seleccionadas:\n")
print(muestra_mujeres)

#Imprimos el resultado final combinados

print(muestratotal)

# El resultado seria correspondiente a Muestreo Estratificado