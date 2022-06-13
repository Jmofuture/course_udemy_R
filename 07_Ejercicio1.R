#Ejercicio 1

#Realizar un ciclo While que corra mientras el valor sea menor o igual a 5
#y guardar en una variable el acumulado de los valores que fue tomando

accumulated <- 0
counter <- 1

while (counter <= 5){
  accumulated <- accumulated + counter
  counter <- counter + 1 
  print(accumulated)
}

#Realizar un ciclo for que corra del 1 al 5 y cuando tome el valor de 5 se imprima
#la leyenda : Este es el último item y el valor de la variable

for (i in 1:5) {
  if(i == 5){
    print(paste("Este es el último item", i, sep = " "))
  }else{
    print("Aun no llegó a 5")
  }
}