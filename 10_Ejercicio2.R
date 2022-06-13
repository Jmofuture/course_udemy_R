# Ejerciocio 2


# Construir un vector númerico con 10 entradas de numeros del 5:14

vector_num <- c(5:14)

# Obtener la longitud del vector

vector_length <- length(vector_num)

# Uso del [] para acceder a la primera posicion

position <- vector_num[1]

# Uso de la funcion length para acceder a la ultima posicion del vector

last <- vector_num[length(vector_num)]

# Arega una nueva entrada con el numero 23 al vector

add_num <- c(vector_num, 23) #Creando un nuevo vector
func_vector <- append(x = vector_num, values = 23, after = length(vector_num)) # Usando la funcion append

