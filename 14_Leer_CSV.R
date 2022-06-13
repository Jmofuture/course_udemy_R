source("C:/Users/jeano/OneDrive/Escritorio/R Curso/Librerias.R")

# Usamos la funcion read.csv
# Parametros : header indica si el archivo tiene titulos en las columnas
# sep indica cual es el caracter que separa los datos
# quote tengo que ver exatamente para que sirve, pero parece que le asigna comillas a los textos
# strip.white elimna los espacios en blanco luego de establecer el separador
# col.names, row.names nos pide un vector con los nombre que queremso asignar a las filas o columnas
# fill rellena los espacios vacios para hacer coincidir la cantidad de registros

bbdd <- read.csv(file = "C:/Users/jeano/OneDrive/Escritorio/R Curso/proyecto1.csv",
                 header = TRUE, sep = ",", strip.white = TRUE)

str(bbdd)
head(bbdd)

# Operaciones con DF

bbdd$porcentaje_deuda <-round(bbdd$adeudo_actual / bbdd$ventas_tot *100, 2)  
bbdd

# 

sum(bbdd$ventas_tot)
mean(bbdd$ventas_tot)
median(bbdd$ventas_tot)

min(bbdd$ventas_tot)



# Eliminar una columna

bbdd$X <- NULL

# Filtrar
# Se pueden usar operadores logicos


bbddf <- filter(bbdd, B_adeudo == "Con adeudo")


# Visualizacion con Qplot

head(bbdd)

# La variable X es obligatoria la Y es opcional
# Por defecto hara un historgrama
qplot(B_adeudo, data = bbdd)

# Con las dos variables hara un grafico de dispersion

qplot(adeudo_actual, no_cdtos, data = bbdd)

qplot(id_sucursal, data = bbdd, geom="histogram", fill = B_adeudo)

