#Crear un Vector

vector <- c(35,22,48,78,90,100.85)
str(vector)


vector1 <- c(1:20)
str(vector1)

vectorstr <- c("Jean","Michell","Olmedillo", "Figuera")
str(vectorstr)

vector_logico <- c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)
str(vector_logico)

#Seleccionar elementros del vector con []

vector[1]
vector[1:5]
vector1[20]
vectorstr[2]

#Siqueremos siempre queremos la ultima entrada usamos length 
vector_logico[length(vector_logico)]

#Si quwermos un rango del vector y un valor adicional que no es continuo 
# Debemos crear un vector nuevo con la consulta, sino darìa error

vector1[c(2:15, 17)]

