num1 <- 35
name <- "Jean"
date <- "2022-06-11"
date2 <- as.Date("2022-06-11")
date3 <- as.Date("11-06-2022",format = "%d-%m-%Y")

str(name)


#Operaciones númericas

num2 <- num1 + 8

num3 <- num2 + num1

sales <- 35000
sellers <- 15
avr <- round(sales / sellers, 2) 

#Operaciones String
last_name <- "Olmedillo"

full_name <- paste(name,last_name, sep = "/")

#Operaciones fecha

date4 <- as.Date("1986-07-15")

date5 <- date2 - date4

date5
