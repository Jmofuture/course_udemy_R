#Matricez Funcion matrix() tiene dos dimensiones columnas y filas
# Importar las librerias
source("C:/Users/jeano/OneDrive/Escritorio/R Curso/Librerias.R")

# Se deben crear los vectores que van a ser parte de la matriz


#Columnas
store <- c("Store A","Store B","Store C","Store D","Store F")

#Filas
products <- c("Pan","Jugo","Queso","Leche", "Café")

# Campos, se deben asignar tantos valores como columnas haya para cada fila
# Cada 5 numeros son una fila desde el Pan al Café

price <- c(10,11,10,12,13, 7,8,9,9,8, 20,21,22,20,19, 15,14,15,13,17, 12,13,14,12,11)


# Construir la matriz
# Dentro de la funcion data = a los valores (price), nrow = cantidad de filas segun atributos tengamos (products)
# byrow = indica de que forma van a ser distribuidos los datos en este caso por fila TRUE O FALSE 
# dimnes = list() indica los nombres de las filas y las columnas en ese orden


matriz_precios <- matrix(data = price, nrow = 5, byrow = TRUE, dimnames = list(products, store))

#Las dimensiones de las matrices siempre calculan desde las filas a las columnas 
# En este caso la matriz es de 5 filas y 5 columnas por lo que tiene una dimension de 5x5
# A esto se le llama matriz cuadrada, cuando filas y colimnas tienen la msima cantidad

# La funcion dim genera un vector con la cantidad de filas y columnas
dimension <- dim(matriz_precios)


# Para obtener el nombre de las columnas y filas usamos una funcion respectivamente
# Colnames() Rownames()
# Ambas genran un vector con los nombres

columns <-colnames(matriz_precios)
rows <- rownames(matriz_precios)

# Al ser vectores podemos acceder a ellos con []

columns[2]
columns[2:5]

rows[3]
rows[2:4]

# Operaciones con matrices

matriz_precios

#Transponer t()
t(matriz_precios)

# Operaciones aritmeticas

matriz_precios + 3 # Suma
matriz_precios * 2 # Multiplicacion
matriz_precios ^ 2 # Exponencial
matriz_precios / 2 # Division
matriz_precios - 2 # Resta
matriz_precios %% 2 # Modulo

# Operaciones entre matrices

matriz2 <- matrix(data = c(1:25), nrow =5, byrow = TRUE)

matriz_precios + matriz2
matriz_precios - matriz2
matriz_precios * matriz2
matriz_precios / matriz2
matriz_precios ^ matriz2

# Porcentaje del total

tt <- matriz_precios / sum(matriz_precios) * 100

# Agregar columnas a la matriz
# Store G

"Store G" <- c(11,6,20,16,11)

# Se agrega la variable creada on los valores nuevos y la funcion cbind()
# Si es una variable con espacios se deben unsa los backstick

matriz_precios3 <- cbind(matriz_precios, `Store G`)


# Grafica de la matriz
# En el eje X coloca las filas y el Y el rango de valores
# Dentro del grafico cada numero representa una columna

matplot(matriz_precios3)

# Le podemos pasar argumentos
# Type asigna el tipo de representacion o l p

matplot(matriz_precios3, type = "p")

# Parametro pch asigna iconos en lugar de numeros


matplot(matriz_precios3, type = "p", pch = 6:10)

#Parametro col = vector asignamos colores


matplot(matriz_precios3, type = "p", pch = 6:10, col = c("black", "red", "blue", "yellow", "green"))

# Etiquetar los eje xlab = "Stores", ylab = "Prices"


matplot(matriz_precios3, type = "p", pch = 6:10, col = c("black", "red", "blue", "yellow", "green"),
        xlab = "Stores", ylab = "Prices")

# Modificar la escala de los ejes xlim = c()   ylim = c()

matplot(matriz_precios3, type = "p", pch = 6:10, col = c("black", "red", "blue", "yellow", "green"),
        xlab = "Stores", ylab = "Prices")





# Subsetings
# Extraer parte de la matriz
# Notacion siempre en corchetes la izquerida es filas derecha columnas


matriz_precios[c(1:5),c(1)]
