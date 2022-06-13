#Consicional if

if (5 < 1){
  print("Esta vaina funciona asi papi")
} else {
  print("Sino no anda")
}


if (5 < 10){
  print("Esta vaina funciona asi papi si cumple la condición")
} else {
  print("Sino no anda y sale el else")
}

#Pero esto no es optimo

if(5<6){
  if(10>50){
    print(("Anidado"))
  }else{
    print("Ps no anda")
}
}

#Lo mejor es usar operadores logicos & |


if (35 < 22 | 35 > 22){
  print("Esto es un if con Or")
}else{
  print("El or no funcionó")
}


if (35 < 22 & 35 > 22){
  print("Esto es un if con &")
}else{
  print("El & no funcionó")
}


