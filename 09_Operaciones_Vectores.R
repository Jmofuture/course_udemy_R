#Operacuiones con vectores
# Los vectores deben tener la misma longitud 
# De lo contrario R va a agregar un 1 en los espacios faltantes
# Y esto puede ocasionar errores de calculos

vector_num <- c(1:5)
vector_num1 <- c(6:10)

# Suma de vectores

suma_vectores <- vector_num + vector_num1
suma_vectores

# Multiplicar

milt_vectores <- vector_num * vector_num1

# Resta 

rest_vectores <- vector_num - vector_num1

# Division

div_vectores <- vector_num / vector_num1

# Podermos usar la funcion Round para igualr los decimales a 1,2,3

div_vectores2 <- round(vector_num / vector_num1, 2) 

# Producto escalar

escalar <- vector_num %*% vector_num1#La diferencia es que este crea una matriz
escalar2 <- sum(vector_num * vector_num1)






