#Caso: Mazo 52 cartas
#Ante las interrogantes totales que son 9 se realiza el siguiente reporte

# Definir el espacio muestral de las cartas
valores <- c("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K")
palos <- c("Corazones", "Diamantes", "Tréboles", "Picas")
cartas <- expand.grid(Valor = valores, Palo = palos)

# Recorrido de los valores
print(cartas)
cat("Número de valores en el espacio muestral:", nrow(cartas), "\n")

# Cálculos de probabilidades y posibilidades
prob_rey <- 4 / 52                        # 2 - Probabilidad de sacar un Rey
prob_mayor10 <- 12 / 52                   # 3 - Probabilidad de sacar una carta mayor a 10
posi_favor_seis <- 4 / 48                 # 4 - Posibilidades a favor de sacar un seis 
prob_diamantes <- 13 / 52                 # 5 - Probabilidad de sacar una carta de Diamantes
prob_nueve_trebol <- 1 / 52               # 6 - Probabilidad de sacar el Nueve de trébol
prob_rey_o_8_corazones <- 5 / 52          # 7 - Probabilidad de sacar un Rey o el 8 de Corazones
posi_contra_espada <- round(39 / 13)      # 8 - Posibilidades en contra de sacar una espada 
posi_contra_roja <- round(26 / 26)        # 9 - Posibilidades en contra de sacar una carta roja 

# El reporte con valores y descripción
reporte <- data.frame(
  Descripción = c(
    "2- Probabilidad de sacar un Rey",
    "3- Probabilidad de sacar una carta mayor a 10",
    "4- Posibilidad a favor de sacar un seis",
    "5- Probabilidad de sacar una carta de Diamantes",
    "6- Probabilidad de sacar el Nueve de Trébol",
    "7- Probabilidad de sacar un Rey o el 8 de Corazones",
    "8- Posibilidades en contra de sacar una espada (Picas)",
    "9- Posibilidades en contra de sacar una carta roja"
  ),
  Valor = c(
    prob_rey,
    prob_mayor10,
    posi_favor_seis,                       # Mostrado sin redondear
    prob_diamantes,
    prob_nueve_trebol,
    prob_rey_o_8_corazones,
    posi_contra_espada,
    posi_contra_roja
  ),
  # Aplicamos porcentaje solo a las probabilidades
  Porcentaje = c(
    prob_rey * 100,
    prob_mayor10 * 100,
    NA,                    # Al ser posibilidad no es necesario convertirlo a porcentaje.
    prob_diamantes * 100,
    prob_nueve_trebol * 100,
    prob_rey_o_8_corazones * 100,
    NA,                    # Al ser posibilidad no es necesario convertirlo a porcentaje.
    NA                     # Al ser posibilidad no es necesario convertirlo a porcentaje.
  )
)

# Imprimir el reporte sin mostrar los índices de fila
print(reporte, row.names = FALSE)



