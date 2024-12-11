# CASO 2

# SABEMOS QUE:
# TAMAÑO DE LA MUESTRA N = 100
# MEDIA MUESTRAL = 19.500 KM
# DESVIACIÓN ESTÁNDAR MUESTRAL = 3,900 KM
# MEDIA ESPERADA = 20.000 KM
# NIVEL DE SIGNIFICANCIA 3%

# DATOS

n <- 100 # Tamaño de la muestra
mediabuscada <- 20000 # Media esperada (hipótesis nula = H0)
media_muestral <- 19500 # Media muestral
sd_muestral <- 3900 #Desviación estándar muestral
nv_significancia <- 0.03 #Nivel de significancia

# CÁLCULO Z VALOR DE PRUEBA

error_estandar <- sd_muestral / sqrt(n) # Erorr estándar
z_calculada <- (media_muestral - mediabuscada) / error_estandar # Se almacena en Z_calculada

#VALOR CRÍTICO
z_critico <- qnorm(nv_significancia) # Valor crítico

#P-VALOR
p_valor <- pnorm(z_calculada)

# REGLA DE DECISIÓN Y CONCLUSIÓN
cat("#### REPORTE FINAL ####\n")
cat("1. Datos iniciales:\n")
cat("   - Tamaño de la muestra (n):", n, "\n")
cat("   - Media muestral:", media_muestral, "\n")
cat("   - Desviación estándar muestral:", sd_muestral, "\n")
cat("   - Media esperada:", mediabuscada, "\n")
cat("   - Nivel de significancia:", nv_significancia, "\n\n")

cat("2. ##RESULTADOS DEL ANÁLISIS##\n")
cat("   - Valor de prueba (z_calculada):", z_calculada, "\n")
cat("   - Valor crítico (z_critico):", z_critico, "\n")
cat("   - P-Valor:", p_valor, "\n\n")

cat("3. #CONCLUSIÓN#:\n")
if (z_calculada < z_critico) {
  cat("   - Se rechaza H0: El promedio de kilómetros recorridos es MENOR a 20.000 km.\n")
} else {
  cat("   - No se puede rechazar H0: NO hay suficiente evidencia para concluir que el promedio sea menor a 20.000 km.\n")
}
