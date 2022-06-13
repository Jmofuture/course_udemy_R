#Funciones

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

# Funcion

funcion <- function(argumento){
  argumento <- argumento * 0.85
  return(argumento)
}

# La llamamos

matriz_descuento <- funcion(argumento = matriz_precios)

matplot(matriz_descuento, type = "l")

