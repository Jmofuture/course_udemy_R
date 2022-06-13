# Ejercicio 3


# Crear una matriz de dimensiones 3x4, donde las filas hagan referencia a los años de los automoviles
# del 2019 -2021 y se comparen con 4 marcas Nissan, Ford, kia y Seat

precios <- c(100000,95000,110000,105000, 150000,155000,145000,142000, 200000,205000,210000,215000)
marcas <- c("Nissan","Ford","Kia","Seat")
anios <- c(2019,2020,2021)
matriz_autos <- matrix(data = precios, nrow = 3, byrow = TRUE, dimnames = list(anios, marcas))

# Agregare una nueva marca la cual sera Audi y los valores para los años 2019-2021
# Son 150000,200000,290000

Audi <- c(150000,200000,290000)

matriz_autos2 <- cbind(matriz_autos, `Audi`)

#Graficar con Matplot

matplot(matriz_autos2, type = "p", col = c("black","red","blue","orange","pink"),
        xlab = "Year", ylab = "Prices")
