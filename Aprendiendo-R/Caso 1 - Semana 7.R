# Caso 1

# ¿ESTÁ EL PROCESO LLENANDO BOLSAS DE CAFÉ DE 500 GRAMOS CONFORME A LO INDICADO EN LA ENVOLTURA?

# SABEMOS QUE:

# LA ENVOLTURA DEBE CONTENER 500 GRAMOS DE CAFÉ
# SE TOMAN UNA MUESTRA DE 10 BOLSAS ALEATORIAS 
# NIVEL DE SIGNIFICACIÓN DEL 5%

# DATOS INICIALES
muestra <- c(502, 501, 497, 491, 496, 501, 502, 500, 489, 490) # Pesos de las bolsas (muestra)
mediabuscada <- 500  # Media esperada (hipótesis nula = H0)
nv_significancia <- 0.05  # Nivel de significancia (5%)

# CÁLCULOS INICIALES
n <- length(muestra)  # Tamaño de la muestra
media_muestral <- mean(muestra)  # Media de la muestra
sd_muestral <- sd(muestra)  # Desviación estándar muestral

# VALOR DE PRUEBA (t_calculada)
t_calculada <- (media_muestral - mediabuscada) / (sd_muestral / sqrt(n))

# VALOR CRÍTICO
t_critico <- qt(1 - nv_significancia / 2, df = n - 1)  # Valor crítico para una prueba de dos colas

# P-VALOR
p_valor <- 2 * pt(-abs(t_calculada), df = n - 1)  # Cálculo del p-valor

# REGLA DE DECISIÓN Y CONCLUSIÓN
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
}

