# Caso 1

# ¿ESTÁ EL PROCESO LLENANDO BOLSAS DE CAFÉ DE 500 GRAMOS CONFORME A LO INDICADO EN LA ENVOLTURA?

# SABEMOS QUE:

# LA ENVOLTURA DEBE CONTENER 500 GRAMOS DE CAFÉ
# SE TOMAN UNA MUESTRA DE 10 BOLSAS ALEATORIAS 
# NIVEL DE SIGNIFICANCIA DEL 5%

# DATOS INICIALES
muestra <- c(502, 501, 497, 491, 496, 501, 502, 500, 489, 490) # Pesos de las bolsas (muestra)
mediabuscada <- 500  # Media esperada (hipótesis nula = H0)
nv_significancia <- 0.05  # Nivel de significancia (5%)
n <- length(muestra)  # Tamaño de la muestra
df <- n - 1 # Grado de libertad

# CÁLCULOS INICIALES
media_muestral <- mean(muestra)  # Media de la muestra
sd_muestral <- sd(muestra)  # Desviación estándar muestral

# VALOR DE PRUEBA (t_calculada)
t_calculada <- (media_muestral - mediabuscada) / (sd_muestral / sqrt(n))

# VALOR CRÍTICO
t_critico <- qt(1 - nv_significancia / 2, df = n - 1)  # Valor crítico para una prueba de dos colas

# P-VALOR
p_valor <- 2 * pt(-abs(t_calculada), df = n - 1)  # Cálculo del p-valor

## GENERAMOS EL GRÁFICO ##

# Crear rango de valores para el eje X
# Valores de distribución, eje X y función seq(), para crear el rango de la curva T

x <- seq(-4, 4, length = 500) # Rango de valores del estadístico t

# Calculamos la densidad de la distribución T
# La función dt() entrega la densidad de la distribución T en los puntos X, es decir GENERAMOS LA CURVA

y <- dt(x, df = n-1) # Densidad de la distribución de T

# GRAFICAR CURVA

# Graficamos la distribución t-Student
# Usamos la función plot() para generar gráficos básico

plot(x, y, type="l", lwd=2, col="blue", main = "Distribución t-Student", xlab = "Estadístico t", ylab= "Densidad" )

# Añadimos los valores críticos
# Ahora para marcar los valores críticos usamos la función abline(), así podemos añadir líneas verticales señalando estos puntos críticos

abline(v = c(-t_critico, t_critico), col = "red", lty=2) # Usaremos líneas punteadas para estos valores críticos
text(c(-t_critico, t_critico), c(0.08, 0.08), labels = c("-t crítico", "t crítico"), col = "red")


# Finalizamos con la marcación de los valores calculados usando función points(), añadiendo un punto al gráfico en el lugar donde está tcalculada

points(t_calculada, 0, col="darkgreen", pch=19) # Usando un punto verde para t_calculada
text(t_calculada, 0.05, labels = "t calculada", col = "darkgreen", pos = 4)


## HASTA AQUÍ SERIA LA GENERACIÓN DEL GRÁFICO ##


### REPORTE FINAL ###

## REGLA DE DECISIÓN Y CONCLUSIÓN ##
cat("#### REPORTE FINAL ####\n")
cat("1. Datos iniciales:\n")
cat("   - Tamaño de la muestra (n):", n, "\n")
cat("   - Media muestral:", media_muestral, "\n")
cat("   - Desviación estándar muestral:", sd_muestral, "\n")
cat("   - Media esperada:", mediabuscada, "\n\n")

cat("2. ##RESULTADOS DEL ANÁLISIS##\n")
cat("   - Valor de prueba (t_calculada):", t_calculada, "\n")
cat("   - Valor crítico (t_critico):", t_critico, "\n")
cat("   - P-Valor:", p_valor, "\n\n")

cat("3. #CONCLUSIÓN#:\n")
if (abs(t_calculada) > t_critico) {
  cat("   - Se rechaza H0: El proceso NO está llenando correctamente las bolsas de café.\n")
} else {
  cat("   - No se puede rechazar H0: El proceso SÍ está llenando correctamente las bolsas de café.\n")
  cat("   - Las diferencias observadas pueden atribuirse al azar dentro del nivel de confianza establecido.\n")
}
