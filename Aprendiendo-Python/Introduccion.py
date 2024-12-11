import pandas as pd

# Crear un DataFrame simple

data = {
    'Nombre': ['Juan', 'María', 'Pedro', 'Ana'],
    'Edad': [23, 30, 35, 28],
    'Ciudad': ['Santiago', 'Valparaíso', 'Concepción', 'La Serena']
}

df = pd.DataFrame(data)

# Mostrar los datos

print(f"Datos del DataFrame: {df}")

# Filtrar datos personas mayores de 25 años

filtro = df[df['Edad'] > 25]
print(f"Personas mayores de 25 años: {filtro}")

# Guardar en un archivo CSV

df.to_csv('dato.csv', index=False)
print(f"El archivo 'dato.csv' fue guardado correctamente")
