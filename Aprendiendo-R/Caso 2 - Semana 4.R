# Caso 2 - Semana 4
# N° de multas de tránisto aplicadas el 2023 en Santiago


#¿Cuál es la varianza poblacional?

#Sabiendo que (N-1)/N donde N es el tamño de la población

#Multas por mes
multas <-c(19,17,22,18,28,34,45,39,38,44,34,10)

#Cálculo de Varianza Poblacional
#Hacemos que recorra toda la lista de Multas para así obtener la Varianza 
varianzaPoblacional <- var(multas) * (length(multas) - 1)/ length(multas)

#¿Cuál es la desviación estándar poblacional?
#Desviación Estándar Poblacional
#Ahora usaremos la función "sqrt" para obtener la raíz cuadrada de VarianzaPoblacional
desviacionPoblacional <-sqrt(varianzaPoblacional)

#¿Cuál es el coeficiente de variación?
#Ahora usaremos la función "mean" para obtener la media
media <-mean(multas)
#Una vez obtenida la media usaremos la siguiente formula para poder dar con
#El cofienciente de variación
coeficienteVariacion <-(desviacionPoblacional/media)*100

#¿Cuál es el rango?
#El Rango es la diferencia numérica entre el valor máximo y el valor mínimo
#Por lo cual usaremos el rango más alto de multas y el menor de la misma lista.
rango <-max(multas) - min(multas)

#Reporte Detalles
cat("Varianza Poblacional:", varianzaPoblacional,"\n")
cat("Desviación Estándar Poblacional:", desviacionPoblacional,"\n")
cat("Coeficiente de Variación:", coeficienteVariacion,"%\n")
cat("Rango:", rango, "\n")
